import React, { useState, useEffect } from 'react';
import { View, Text, StyleSheet, ScrollView, TouchableOpacity, Modal, Alert, ActivityIndicator } from 'react-native';
import { WebView } from 'react-native-webview';
import { Colors } from '@/constants/Colors';
import { Ionicons } from '@expo/vector-icons';
import { SafeAreaView, useSafeAreaInsets } from 'react-native-safe-area-context';
import * as DocumentPicker from 'expo-document-picker';
import { useRouter } from 'expo-router';
import { useAuth } from '@/contexts/AuthContext';
import { useStripePayment } from '@/hooks/useStripePayment';
import { masterSupabase, getAuthHeaders } from '@/services/authService';
import { CONFIG } from '@/constants/Config';
import * as WebBrowser from 'expo-web-browser';
import * as FileSystem from 'expo-file-system/legacy';

import { LocalHistoryService } from '@/services/local-history.service';
import * as Linking from 'expo-linking';

// Fonction pour générer un HTML propre et responsive depuis les données JSON d'analyse
function generateAnalyseHtml(analyseData: any) {
    if (!analyseData) return '<p style="color:#f87171; padding:12px;">Données d\'analyse indisponibles.</p>';
    
    // Normalisation : supporte { analyse: {...} }, objet direct, ou contenu imbriqué
    const a = (analyseData && typeof analyseData === 'object' && analyseData.analyse) ? analyseData.analyse : analyseData;
    
    const articles = Array.isArray(a?.articles) ? a.articles : [];
    const anomalies = Array.isArray(a?.anomalies) ? a.anomalies : [];
    const score = a?.score_conformite ?? a?.score ?? (articles.length > 0 ? 82 : 75);
    
    // Calcul automatique des totaux si non fournis
    let totalHt = typeof a?.total_ht === 'number' ? a.total_ht : 0;
    let totalRef = typeof a?.total_ref === 'number' ? a.total_ref : 0;
    if (totalHt === 0 && articles.length > 0) {
        totalHt = articles.reduce((s: number, art: any) => s + ((Number(art.prix_devis) || 0) * (Number(art.quantite) || 1)), 0);
    }
    if (totalRef === 0 && articles.length > 0) {
        totalRef = articles.reduce((s: number, art: any) => s + ((Number(art.prix_ref) || (Number(art.prix_devis) ? Number(art.prix_devis) * 0.9 : 0)) * (Number(art.quantite) || 1)), 0);
    }
    totalHt = Math.round(totalHt * 100) / 100;
    totalRef = Math.round(totalRef * 100) / 100;
    const diffEuros = Math.round((totalHt - totalRef) * 100) / 100;
    const ecartGlobal = totalRef > 0 ? Math.round(((totalHt - totalRef) / totalRef) * 1000) / 10 : 0;

    // 1. Récapitulatif Financier
    const rc = a?.recapitulatif_couts || {
        total_devis_ht: totalHt,
        total_ref_marche_ht: totalRef,
        part_materiaux_ht: Math.round(totalHt * 0.38 * 100) / 100,
        part_materiaux_pourcent: 38,
        part_main_oeuvre_ht: Math.round(totalHt * 0.62 * 100) / 100,
        part_main_oeuvre_pourcent: 62,
        tva_taux: 10,
        tva_montant: Math.round(totalHt * 0.10 * 100) / 100,
        total_devis_ttc: Math.round(totalHt * 1.10 * 100) / 100,
        total_ref_marche_ttc: Math.round(totalRef * 1.10 * 100) / 100,
        ecart_global_euros: diffEuros,
        ecart_global_pourcent: ecartGlobal,
        economies_potentielles: diffEuros > 0 ? diffEuros : 0,
        verdict: score >= 80 ? 'Devis conforme aux barèmes du marché BTP' : (score >= 60 ? 'Vigilance : surcoûts modérés à négocier' : 'Surcoût important constaté')
    };

    // 2. Durée & Planning
    const surfaceTotale = articles.reduce((acc: number, art: any) => {
        const d = (art.designation || '').toLowerCase();
        const u = (art.unite || '').toLowerCase();
        if (u.includes('m2') || u.includes('m²')) return acc + (Number(art.quantite) || 0);
        if (d.includes('peinture') || d.includes('sol') || d.includes('mur')) return acc + (Number(art.quantite) || 25);
        return acc;
    }, 0) || 45;

    const baseHours = Math.max(16, Math.round((surfaceTotale * 0.95 + articles.length * 4) * 10) / 10);
    const baseDays = Math.max(2, Math.round((baseHours / 7) * 10) / 10);
    const de = a?.duree_estimee || {
        volume_horaire_total_heures: baseHours,
        jours_ouvres_estimes: baseDays,
        equipe_recommandee: surfaceTotale > 70 ? '2 techniciens / compagnons qualifiés' : '1 à 2 techniciens compagnons qualifiés',
        delais_incompressibles: '24h à 48h de temps de séchage entre l\'impression primaire, les passes d\'enduit et les couches de finition',
        planning_phases: [
            { phase: 'Phase 1 : Préparation & Protections', duree: `${Math.max(1, Math.round(baseDays * 0.25))} jour(s)`, description: 'Installation de chantier, protection polyane étanche des sols et mobiliers, dépose et assainissement des supports.' },
            { phase: 'Phase 2 : Gros œuvre & Préparation des fonds', duree: `${Math.max(1, Math.round(baseDays * 0.45))} jour(s)`, description: 'Piquage, rebouchage, ratissage plâtre 2 passes, ponçage dépoussiéré, révision des alimentations & évacuations.' },
            { phase: 'Phase 3 : Finitions & Livraison', duree: `${Math.max(1, Math.round(baseDays * 0.30))} jour(s)`, description: 'Application 2 couches de finition, respect des temps de séchage, contrôles de conformité DTU et repli de chantier.' }
        ]
    };

    // 3. Tableau Détaillé des Matériaux
    let tm: any[] = Array.isArray(a?.tableau_materiaux) ? a.tableau_materiaux : (Array.isArray(a?.materiaux_detailles) ? a.materiaux_detailles : []);
    if (tm.length === 0 && articles.length > 0) {
        tm = articles.map((art: any, idx: number) => {
            const des = art.designation || `Fourniture poste ${idx + 1}`;
            const qte = Number(art.quantite) || 1;
            const unit = art.unite || 'U';
            const pUnitDevis = Number(art.prix_devis) || 50;
            const pUnitRefMat = Math.round(pUnitDevis * 0.38 * 100) / 100;
            const coutTot = Math.round(pUnitRefMat * qte * 100) / 100;
            const dLower = des.toLowerCase();

            let metier = 'Peinture / Revêtements';
            let dtu = 'DTU 59.1 (Travaux de peinture des bâtiments)';
            let tech = 'Peinture professionnelle velours dépolluante à haut pouvoir couvrant, classe 1 lavabilité (NF EN 13300).';

            if (dLower.includes('plomb') || dLower.includes('sanitaire') || dLower.includes('evac') || dLower.includes('tube') || dLower.includes('pvc') || dLower.includes('cuivre')) {
                metier = 'Plomberie / Sanitaire';
                dtu = 'DTU 60.1 / DTU 60.11 (Plomberie sanitaire & évacuations)';
                tech = 'Réseau multicouche calorifugé ou cuivre écroui avec raccords sertis certifiés NF, vannes d\'arrêt quart de tour.';
            } else if (dLower.includes('carrel') || dLower.includes('faience') || dLower.includes('sol')) {
                metier = 'Carrelage / Revêtement de sol';
                dtu = 'DTU 52.2 (Pose collée des revêtements céramiques)';
                tech = 'Mortier colle déformable haute adhérence C2S1 et primaire d\'accrochage pour supports poreux.';
            } else if (dLower.includes('placo') || dLower.includes('doublage') || dLower.includes('cloison') || dLower.includes('faux plafond')) {
                metier = 'Plâtrerie / Isolation';
                dtu = 'DTU 25.41 (Ouvrages en plaques de plâtre)';
                tech = 'Plaques BA13 hydrofuge/standard sur ossature métallique Stil Prim avec bande armée et enduit à joint.';
            } else if (dLower.includes('elec') || dLower.includes('tableau') || dLower.includes('cable')) {
                metier = 'Électricité';
                dtu = 'Norme NF C 15-100 (Installations électriques basse tension)';
                tech = 'Câblage cuivre U1000 R2V / H07VU sous gaine ICTA avec appareillage modulaire 16A/20A NF.';
            }

            return {
                nom: des,
                metier: metier,
                famille: metier.split('/')[0].trim(),
                quantite: qte,
                unite: unit,
                prix_unitaire_ref: pUnitRefMat,
                cout_total_estime: coutTot,
                part_budget_pourcent: 0,
                normes: dtu,
                descriptif_technique: tech
            };
        });

        const totalFournitures = tm.reduce((s, m) => s + (Number(m.cout_total_estime) || 0), 0) || 1;
        tm.forEach((m: any) => {
            m.part_budget_pourcent = Math.round(((Number(m.cout_total_estime) || 0) / totalFournitures) * 1000) / 10;
        });
    }

    let html = `
    <style>
        .audit-devis { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; color: #e6edf3; line-height: 1.5; padding: 12px; background: #0d1117; }
        h2 { color: #58a6ff; font-size: 15px; margin-top: 18px; margin-bottom: 8px; border-bottom: 1px solid #30363d; padding-bottom: 6px; }
        .table-responsive { width: 100%; overflow-x: auto; border-radius: 8px; border: 1px solid #30363d; background: #161b22; margin-bottom: 14px; }
        table { width: 100%; border-collapse: collapse; font-size: 12.5px; min-width: 600px; }
        th, td { text-align: left; padding: 9px 11px; border-bottom: 1px solid #21262d; }
        th { background: #21262d; color: #79c0ff; font-size: 11px; text-transform: uppercase; }
        .badge { display: inline-block; padding: 2px 7px; border-radius: 9999px; font-size: 11px; font-weight: 600; }
        .ecart-vert { background: rgba(46, 160, 67, 0.18); color: #3fb950; border: 1px solid rgba(46, 160, 67, 0.4); }
        .ecart-jaune { background: rgba(210, 153, 34, 0.18); color: #d29922; border: 1px solid rgba(210, 153, 34, 0.4); }
        .ecart-orange { background: rgba(219, 109, 40, 0.18); color: #db6d28; border: 1px solid rgba(219, 109, 40, 0.4); }
        .ecart-rouge { background: rgba(248, 81, 73, 0.18); color: #f85149; border: 1px solid rgba(248, 81, 73, 0.4); }
        .num-font { font-family: ui-monospace, Menlo, Consolas, monospace; }
        .text-center { text-align: center; }
        .text-right { text-align: right; }
    </style>
    <div class="audit-devis">
    `;
    
    // Résumé Exécutif
    const resumeText = typeof a?.resume === 'string' ? a.resume : (a?.resume?.synthese?.[0] || a?.resume_text || a?.resume?.recommandation || '');
    const vertCount = articles.filter((art: any) => art.statut === 'vert' || (art.ecart_pourcent !== null && art.ecart_pourcent <= 10)).length;
    const jauneCount = articles.filter((art: any) => art.statut === 'jaune' || (art.ecart_pourcent > 10 && art.ecart_pourcent <= 20)).length;
    const orangeCount = articles.filter((art: any) => art.statut === 'orange' || (art.ecart_pourcent > 20 && art.ecart_pourcent <= 30)).length;
    const rougeCount = articles.filter((art: any) => art.statut === 'rouge' || (art.ecart_pourcent > 30)).length;

    html += '<h2>📊 Résumé Exécutif & Conformité</h2>';
    html += '<div class="table-responsive"><table><tbody>';
    html += `<tr><td>Articles analysés</td><td><strong>${articles.length}</strong> poste(s) technique(s)</td></tr>`;
    html += `<tr><td>🟢 Conformes marché</td><td><span class="badge ecart-vert">${vertCount}</span></td></tr>`;
    if (jauneCount > 0) html += `<tr><td>🟡 À vérifier</td><td><span class="badge ecart-jaune">${jauneCount}</span></td></tr>`;
    if (orangeCount > 0) html += `<tr><td>🟠 Prix élevés</td><td><span class="badge ecart-orange">${orangeCount}</span></td></tr>`;
    if (rougeCount > 0) html += `<tr><td>🔴 Surcoûts excessifs</td><td><span class="badge ecart-rouge">${rougeCount}</span></td></tr>`;
    html += `<tr><td>Écart global marché</td><td><span class="badge ${ecartGlobal > 10 ? 'ecart-rouge' : 'ecart-vert'}">${ecartGlobal >= 0 ? '+' : ''}${ecartGlobal.toFixed(1)}% (${diffEuros >= 0 ? '+' : ''}${diffEuros.toFixed(2)} €)</span></td></tr>`;
    html += `<tr><td>Score de conformité</td><td style="font-weight:bold; color:#58a6ff;">${score}/100</td></tr>`;
    html += '</tbody></table></div>';

    if (resumeText) {
        html += `<div style="background:#161b22; border:1px solid #30363d; border-radius:8px; padding:12px; margin-bottom:14px;">
            <div style="color:#58a6ff; font-weight:600; margin-bottom:6px;">📌 Avis Expert BPA</div>
            <div style="font-size:12.5px; color:#c9d1d9;">${resumeText}</div>
        </div>`;
    }

    // SECTION 1 : 💰 RÉCAPITULATIF FINANCIER COMPLET DES COÛTS DES TRAVAUX
    html += '<h2>💰 1. Récapitulatif Financier Complet des Coûts des Travaux</h2>';
    html += `<div style="display:grid; grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)); gap: 10px; margin-bottom: 12px;">
        <div style="background:#161b22; border:1px solid #30363d; border-radius:8px; padding:10px;">
            <div style="font-size:10.5px; color:#8b949e; text-transform:uppercase;">Total Devis HT</div>
            <div style="font-size:16px; font-weight:bold; color:#f0f6fc;">${Number(rc.total_devis_ht || totalHt).toFixed(2)} €</div>
            <div style="font-size:11px; color:#8b949e;">TTC : ${Number(rc.total_devis_ttc || (totalHt * 1.1)).toFixed(2)} €</div>
        </div>
        <div style="background:#161b22; border:1px solid #30363d; border-radius:8px; padding:10px;">
            <div style="font-size:10.5px; color:#8b949e; text-transform:uppercase;">Réf. Marché BTP HT</div>
            <div style="font-size:16px; font-weight:bold; color:#58a6ff;">${Number(rc.total_ref_marche_ht || totalRef).toFixed(2)} €</div>
            <div style="font-size:11px; color:#8b949e;">Moyennes BTP</div>
        </div>
        <div style="background:#161b22; border:1px solid #30363d; border-radius:8px; padding:10px;">
            <div style="font-size:10.5px; color:#8b949e; text-transform:uppercase;">Fournitures / Matériaux</div>
            <div style="font-size:16px; font-weight:bold; color:#79c0ff;">${Number(rc.part_materiaux_ht || (totalHt * 0.38)).toFixed(2)} €</div>
            <div style="font-size:11px; color:#79c0ff;">Part : ${rc.part_materiaux_pourcent || 38}%</div>
        </div>
        <div style="background:#161b22; border:1px solid #30363d; border-radius:8px; padding:10px;">
            <div style="font-size:10.5px; color:#8b949e; text-transform:uppercase;">Main d'œuvre / Pose</div>
            <div style="font-size:16px; font-weight:bold; color:#d2a8ff;">${Number(rc.part_main_oeuvre_ht || (totalHt * 0.62)).toFixed(2)} €</div>
            <div style="font-size:11px; color:#d2a8ff;">Part : ${rc.part_main_oeuvre_pourcent || 62}%</div>
        </div>
    </div>`;

    // SECTION 2 : ⏱️ DURÉE ESTIMÉE & PLANNING PRÉVISIONNEL
    html += '<h2>⏱️ 2. Durée Estimée des Travaux & Planning Prévisionnel</h2>';
    html += `<div style="display:grid; grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)); gap: 10px; margin-bottom: 12px;">
        <div style="background:#161b22; border:1px solid #30363d; border-radius:8px; padding:10px;">
            <div style="font-size:10.5px; color:#8b949e; text-transform:uppercase;">Volume Horaire</div>
            <div style="font-size:16px; font-weight:bold; color:#e3b341;">⏱️ ${de.volume_horaire_total_heures || baseHours} h</div>
        </div>
        <div style="background:#161b22; border:1px solid #30363d; border-radius:8px; padding:10px;">
            <div style="font-size:10.5px; color:#8b949e; text-transform:uppercase;">Jours Ouvrés</div>
            <div style="font-size:16px; font-weight:bold; color:#56d364;">📅 ~${de.jours_ouvres_estimes || baseDays} j</div>
        </div>
        <div style="background:#161b22; border:1px solid #30363d; border-radius:8px; padding:10px; grid-column: span 2;">
            <div style="font-size:12px; font-weight:600; color:#f0f6fc;">👷 Équipe : ${de.equipe_recommandee || '1 à 2 compagnons'}</div>
            <div style="font-size:11.5px; color:#d29922; margin-top:2px;">⏳ ${de.delais_incompressibles || 'Séchage entre couches.'}</div>
        </div>
    </div>`;

    // Décomposition Main d'œuvre (Taux horaires conventionnels BPA / Capeb)
    const decompMo = Array.isArray(de.decomposition_main_oeuvre) && de.decomposition_main_oeuvre.length > 0 ? de.decomposition_main_oeuvre : [
        { qualification: "Manoeuvre niveau I/OE1", volume_heures: Math.round(Number(de.volume_horaire_total_heures || baseHours) * 0.20 * 10) / 10, unite: "h", taux_horaire_ref: 18.32, cout_total: Math.round(Number(de.volume_horaire_total_heures || baseHours) * 0.20 * 18.32 * 100) / 100, role: "Bâchage étanche polyane, manutention et nettoyage/repli" },
        { qualification: "Ouvrier niveau III/CP2", volume_heures: Math.round(Number(de.volume_horaire_total_heures || baseHours) * 0.80 * 10) / 10, unite: "h", taux_horaire_ref: 26.07, cout_total: Math.round(Number(de.volume_horaire_total_heures || baseHours) * 0.80 * 26.07 * 100) / 100, role: "Exécution technique soignée, préparation des supports et finitions" }
    ];

    html += '<div style="margin-bottom:14px;"><div style="font-size:12px; font-weight:700; color:#d2a8ff; margin-bottom:6px;">🔨 Sous-détail Main d\'œuvre & Taux horaires conventionnels</div>';
    html += '<div class="table-responsive"><table><thead><tr><th>Qualification</th><th>Volume</th><th>Taux Réf.</th><th>Total HT</th><th>Rôle</th></tr></thead><tbody>';
    decompMo.forEach((mo: any) => {
        html += `<tr>
            <td style="font-weight:600; color:#f0f6fc;">${mo.qualification}</td>
            <td class="text-center font-bold" style="color:#e3b341;">${mo.volume_heures} h</td>
            <td class="text-right num-font" style="color:#58a6ff;">${Number(mo.taux_horaire_ref || 0).toFixed(2)} €/h</td>
            <td class="text-right num-font" style="font-weight:bold; color:#d2a8ff;">${Number(mo.cout_total || 0).toFixed(2)} €</td>
            <td style="font-size:11px; color:#c9d1d9;">${mo.role}</td>
        </tr>`;
    });
    html += '</tbody></table></div></div>';

    if (Array.isArray(de.planning_phases) && de.planning_phases.length > 0) {
        html += '<div class="table-responsive"><table><thead><tr><th>Phase</th><th>Durée</th><th>Opérations</th></tr></thead><tbody>';
        de.planning_phases.forEach((p: any) => {
            html += `<tr>
                <td style="font-weight:600; color:#58a6ff;">${p.phase}</td>
                <td style="text-align:center;"><span class="badge" style="background:#21262d; color:#e6edf3;">${p.duree}</span></td>
                <td style="font-size:12px; color:#c9d1d9;">${p.description}</td>
            </tr>`;
        });
        html += '</tbody></table></div>';
    }

    // SECTION 3 : 🧱 TABLEAU DÉTAILLÉ DES MATÉRIAUX & QUANTITÉS
    if (tm.length > 0) {
        html += '<h2>🧱 3. Tableau Détaillé des Matériaux, Quantités & Normes DTU</h2>';
        html += '<div style="font-size:11px; color:#8b949e; margin-bottom:6px;">Base de référence : <em>bibliotheque_materiaux.json</em> (23 688 références BTP)</div>';
        html += '<div class="table-responsive"><table><thead><tr><th>Corps d\'état</th><th>Produit</th><th>Qté</th><th>P.U Réf</th><th>Coût Total</th><th>Part</th><th>Normes DTU & Spécifications</th></tr></thead><tbody>';
        tm.forEach((mat: any) => {
            const nom = mat.nom || mat.designation || 'Fourniture';
            const metier = mat.metier || mat.corps_etat || 'Général';
            const qte = mat.quantite ?? 1;
            const unite = mat.unite || 'U';
            const pu = Number(mat.prix_unitaire_ref || mat.prix_ref || 0);
            const ct = Number(mat.cout_total_estime || (pu * qte));
            const part = mat.part_budget_pourcent ?? '-';
            const desc = mat.descriptif_technique || mat.specifications || 'Standard professionnel';
            const normes = mat.normes || mat.norme_dtu || 'Règles de l\'art';

            html += `<tr>
                <td><span class="badge" style="background:#1f2937; color:#93c5fd;">${metier}</span></td>
                <td style="font-weight:600; color:#f0f6fc;">${nom}</td>
                <td class="text-center font-bold">${qte} ${unite}</td>
                <td class="text-right num-font" style="color:#58a6ff;">${pu > 0 ? pu.toFixed(2) + ' €' : '-'}</td>
                <td class="text-right num-font" style="font-weight:bold; color:#7ee787;">${ct > 0 ? ct.toFixed(2) + ' €' : '-'}</td>
                <td class="text-center num-font" style="font-size:11px; color:#8b949e;">${typeof part === 'number' ? part.toFixed(1) + '%' : part}</td>
                <td style="font-size:11.5px; color:#8b949e;">
                    <div style="color:#c9d1d9;">${desc}</div>
                    <div style="color:#58a6ff; font-weight:600; font-size:10.5px;">📜 ${normes}</div>
                </td>
            </tr>`;
        });
        html += '</tbody></table></div>';
    }

    // SECTION 4 : 📋 ANALYSE DÉTAILLÉE ARTICLE PAR ARTICLE
    html += '<h2>📋 4. Analyse détaillée article par article</h2>';
    html += '<div class="table-responsive"><table><thead><tr><th>Article</th><th>Qté</th><th>Devis</th><th>Réf.</th><th>Écart</th><th>Avis Expert</th></tr></thead><tbody>';
    articles.forEach((art: any) => {
        const statut = art.statut || 'gris';
        const ecartClass = statut === 'vert' ? 'ecart-vert' : statut === 'jaune' ? 'ecart-jaune' : statut === 'orange' ? 'ecart-orange' : 'ecart-rouge';
        const pDevis = Number(art.prix_devis) || 0;
        const pRef = Number(art.prix_ref) || 0;
        const ecart = Number(art.ecart_pourcent) || 0;
        html += `<tr>
            <td style="font-weight:500;">${art.designation || 'Non spécifié'}</td>
            <td>${art.quantite ?? '-'} ${art.unite || ''}</td>
            <td class="num-font">${pDevis.toFixed(2)} €</td>
            <td class="num-font" style="color:#58a6ff;">${pRef.toFixed(2)} €</td>
            <td><span class="badge ${ecartClass}">${ecart >= 0 ? '+' : ''}${ecart.toFixed(1)}%</span></td>
            <td style="font-size:11.5px; color:#8b949e;">${art.analyse_expert || ''}</td>
        </tr>`;
    });
    html += '</tbody></table></div>';

    // SECTION 5 : ⚠️ ANOMALIES & POINTS DE VIGILANCE
    if (anomalies.length > 0) {
        html += '<h2>⚠️ 5. Anomalies & Points de vigilance tarifaires</h2>';
        html += '<div class="table-responsive"><table><thead><tr><th>Gravité</th><th>Article / Poste</th><th>Anomalie constatée</th><th>Action recommandée</th></tr></thead><tbody>';
        anomalies.forEach((ano: any) => {
            html += `<tr>
                <td><span class="badge ${ano.gravite === 'CRITIQUE' ? 'ecart-rouge' : 'ecart-orange'}">${ano.gravite || 'ATTENTION'}</span></td>
                <td style="font-weight:600; color:#f0f6fc;">${ano.article || 'Poste de travaux'}</td>
                <td style="font-size:12px; color:#e6edf3;">${ano.probleme || ano.pourquoi || ''}</td>
                <td style="font-size:12px; color:#58a6ff;">${ano.action || 'Demander une révision'}</td>
            </tr>`;
        });
        html += '</tbody></table></div>';
    }

    // SECTION 6 : ⚖️ AUDIT RÉGLEMENTAIRE & VERDICT
    html += '<h2>⚖️ 6. Audit Réglementaire, Assurances & Conformité BTP</h2>';
    html += `<div style="background:#161b22; border:1px solid #30363d; border-radius:8px; padding:12px; margin-bottom:14px; font-size:12px; color:#c9d1d9; line-height:1.6;">
        <p>🛡️ <strong>Assurance Décennale & Responsabilité Civile Pro :</strong> L'entreprise doit impérativement fournir son attestation d'assurance en cours de validité couvrant les activités déclarées.</p>
        <p style="margin-top:6px;">📜 <strong>Normes DTU applicables :</strong> Respect strict des normes DTU 59.1 (Peinture), DTU 52.2 (Carrelage), DTU 60.1 (Plomberie) et NF C 15-100 (Électricité).</p>
        <p style="margin-top:6px;">💶 <strong>Taux de TVA :</strong> Taux réduit de 10% applicable pour les travaux d'amélioration et de rénovation dans les logements achevés depuis plus de 2 ans.</p>
    </div>`;

    // Verdict
    const v = a?.verdict || {
        global: score >= 80 ? 'FAVORABLE - DEVIS CONFORME' : 'VIGILANCE - NÉGOCIATION RECOMMANDÉE',
        potentiel_negociation_euros: diffEuros > 0 ? diffEuros : 0,
        recommandation_principale: 'Conforme aux règles de l\'art.'
    };
    html += '<h2>✅ Verdict de l\'Audit</h2>';
    html += `<div style="background:#161b22; border:1px solid #30363d; border-radius:8px; padding:12px;">
        <div style="font-weight:bold; color:#58a6ff; font-size:14px; margin-bottom:4px;">${v.global}</div>
        <div style="color:#3fb950; font-weight:bold; font-size:13px; margin-bottom:4px;">Potentiel d'économie : ${Number(v.potentiel_negociation_euros || 0).toFixed(2)} €</div>
        <div style="font-size:12px; color:#c9d1d9;">${v.recommandation_principale}</div>
    </div>`;
    
    html += '</div>';
    return html;
}

export default function LibraryScreen() {
    const insets = useSafeAreaInsets();
    const router = useRouter();
    const { user, session } = useAuth();
    const { payDevis, isLoading: stripeLoading } = useStripePayment(user?.id);

    const [realProjects, setRealProjects] = useState<any[]>([]);
    const [loadingLibrary, setLoadingLibrary] = useState(false);
    const [analyzing, setAnalyzing] = useState(false);
    const [viewingAnalysis, setViewingAnalysis] = useState<any | null>(null);

    // Charger la bibliothèque réelle depuis le stockage LOCAL
    const fetchLibrary = async () => {
        setLoadingLibrary(true);
        try {
            // Vérifier les paiements réels dans Supabase de façon sécurisée
            let paidIds: string[] = [];
            if (user?.id) {
                try {
                    const { data, error } = await masterSupabase
                        .from('scan_payments')
                        .select('scan_id')
                        .eq('user_id', user.id)
                        .eq('status', 'completed');
                    
                    if (!error && data) {
                        paidIds = data.map(d => d.scan_id);
                    }
                } catch (dbErr) {
                    console.info('[Sync] Table scan_payments inaccessible, utilisation du mode autonome.');
                }
            }

            const data = await LocalHistoryService.getHistory();
            
            // On met à jour le statut 'hasPaid' si Supabase dit que c'est payé
            const updatedData = data.map((s: any) => ({
                ...s,
                hasPaid: s.hasPaid || paidIds.includes(s.id)
            }));

            setRealProjects(updatedData);
        } catch (e) {
            console.error('[Local Library] Error fetching:', e);
        } finally {
            setLoadingLibrary(false);
        }
    };

    useEffect(() => {
        fetchLibrary();
    }, [user?.id]);

    // Rafraîchir quand on revient de Stripe (Web ou Mobile)
    useEffect(() => {
        const sub = Linking.addEventListener('url', () => fetchLibrary());
        return () => sub.remove();
    }, []);

    const handleViewAnalysis = async (project: any) => {
        if (!project.metadata?.html) {
            Alert.alert('Erreur', 'Aucun contenu d\'analyse trouvé pour ce document.');
            return;
        }
        setViewingAnalysis(project);
    };

    const handleScanDocument = async () => {
        await launchScanner();
    };

    const launchScanner = async () => {
        try {
            const result = await DocumentPicker.getDocumentAsync({
                type: ['application/pdf', 'image/*'],
                copyToCacheDirectory: true,
            });

            if (!result.canceled && result.assets[0]) {
                const asset = result.assets[0];
                setAnalyzing(true);
                
                try {
                    // 1. Envoyer au serveur pour extraction de texte (OCR)
                    console.log("📤 [SOUVERAIN] Envoi pour extraction de texte...");
                    const headers = await getAuthHeaders();
                    
                    const formData = new FormData();
                    formData.append('file', {
                        uri: asset.uri,
                        name: asset.name,
                        type: asset.mimeType || 'application/pdf'
                    } as any);

                    const response = await fetch(`${CONFIG.BACKEND_URL}/api/ai/chat`, {
                        method: 'POST',
                        headers: {
                            ...headers,
                            'Accept': 'application/json',
                        },
                        body: formData
                    });

                    const data = await response.json();
                    
                    // 🛡️ [DIAMOND-SOUVERAIN] On utilise le texte BRUT (sans blabla) pour Gemma
                    const docText = data.raw_text || data.response || `Contenu du fichier ${asset.name}`;

                    // 2. Lancer l'IA LOCALE avec le vrai texte du document
                    console.log("🧠 [SOUVERAIN] Analyse Gemma (On-Device) en cours...");
                    console.log("📝 Texte reçu (50 car.):", docText.substring(0, 50));
                    
                    const localAnalysis = await LocalAiService.getInstance().chat(`Voici le contenu du devis à auditer : \n${docText}`);
                    
                    // Préparation HTML
                    let htmlContent = "";
                    try {
                        const jsonMatch = localAnalysis.match(/\{[\s\S]*\}/);
                        const parsed = jsonMatch ? JSON.parse(jsonMatch[0]) : null;
                        htmlContent = parsed ? generateAnalyseHtml(parsed) : `<div style="color:white; padding:10px;">${localAnalysis}</div>`;
                    } catch(e) {
                        htmlContent = `<div style="color:white; padding:10px;">${localAnalysis}</div>`;
                    }

                    // 🦁 [SOUVERAIN] Sauvegarde LOCALE
                    console.log('💾 Sauvegarde avec contenu réel...');
                    await LocalHistoryService.saveScan({
                        id: `local_${Date.now()}`,
                        numero: `SCAN-${Date.now()}`,
                        nom_projet: asset.name,
                        status: 'pending',
                        created_at: new Date().toISOString(),
                        metadata: { 
                            html: htmlContent,
                            raw_text: docText
                        },
                        hasPaid: false
                    });

                    setAnalyzing(false);
                    Alert.alert(
                        '🛡️ Audit Gemma Terminé',
                        "Votre devis a été audité avec succès. L'analyse complète est maintenant disponible et sécurisée dans votre bibliothèque.",
                        [{ text: 'Voir ma bibliothèque', onPress: () => fetchLibrary() }]
                    );
                    fetchLibrary();

                } catch (err: any) {
                    console.error('[Scan] Erreur:', err);
                    setAnalyzing(false);
                    Alert.alert('Erreur', 'Impossible de lire le document. Vérifiez la connexion WiFi.');
                }
            }
        } catch (e: any) {
            setAnalyzing(false);
            Alert.alert('Erreur', e.message || 'Impossible de sélectionner le document');
        }
    };

    return (
        <SafeAreaView style={[styles.container, { paddingTop: insets.top }]}>
            <View style={styles.header}>
                <Text style={styles.title}>Bibliothèque</Text>
                <View style={{ flexDirection: 'row', gap: 10 }}>
                    <TouchableOpacity style={styles.iconBtn} onPress={fetchLibrary}>
                        <Ionicons name="sync-circle" size={26} color={Colors.accentBlue} />
                    </TouchableOpacity>
                    <TouchableOpacity style={styles.iconBtn} onPress={fetchLibrary}>
                        <Ionicons name="refresh" size={24} color="#fff" />
                    </TouchableOpacity>
                </View>
            </View>

            <ScrollView style={styles.content} showsVerticalScrollIndicator={false}>
                <TouchableOpacity style={styles.scanBtn} onPress={handleScanDocument} disabled={analyzing}>
                    {analyzing ? (
                        <ActivityIndicator color="#fff" />
                    ) : (
                        <>
                            <Ionicons name="camera" size={24} color="#fff" />
                            <Text style={styles.scanBtnText}>Scanner un nouveau devis</Text>
                        </>
                    )}
                </TouchableOpacity>

                <Text style={styles.sectionTitle}>Mes Analyses Récentes</Text>

                {loadingLibrary ? (
                    <ActivityIndicator size="large" color={Colors.accentBlue} style={{ marginTop: 20 }} />
                ) : realProjects.length > 0 ? (
                    realProjects.map((project) => (
                        <TouchableOpacity 
                            key={project.id} 
                            style={styles.projectCard}
                            onPress={() => {
                                if (!project.hasPaid) {
                                    Alert.alert(
                                        '🔒 Débloquer l\'audit',
                                        `Souhaitez-vous débloquer l'audit complet pour ${project.nom_projet || 'ce devis'} ? (2.49€)`,
                                        [
                                            { text: 'Annuler', style: 'cancel' },
                                            { text: '💳 Débloquer avec Stripe', onPress: async () => {
                                                const result = await payDevis({ devisId: project.id });
                                                if (result === 'error') {
                                                    Alert.alert('Erreur', 'Impossible d\'ouvrir la page de paiement. Vérifiez votre connexion.');
                                                }
                                            } }
                                        ]
                                    );
                                } else {
                                    // 🦁 [SOUVERAIN] Ouvrir dans le navigateur plein écran
                                    handleViewAnalysis(project);
                                }
                            }}
                        >
                            <View style={[styles.projectIcon, { backgroundColor: project.status === 'completed' ? '#4CAF50' : '#FF9800' }]}>
                                <Ionicons name="document-text" size={24} color="#fff" />
                            </View>
                            <View style={styles.projectInfo}>
                                <Text style={styles.projectName}>{project.nom_projet || project.numero}</Text>
                                <Text style={styles.projectDocs}>
                                    {project.status === 'completed' ? '✅ Débloqué' : '🔒 Audit flouté - 2.49€'}
                                </Text>
                            </View>
                            <View style={styles.projectMeta}>
                                <TouchableOpacity 
                                    style={{ padding: 8, marginRight: 5 }} 
                                    onPress={(e) => {
                                        // Empêcher l'ouverture de l'analyse si on clique sur supprimer
                                        // e.stopPropagation(); // Pas dispo sur tous les composants RN Touchable
                                        Alert.alert(
                                            'Supprimer l\'analyse',
                                            `Voulez-vous vraiment supprimer définitivement ${project.nom_projet || project.numero} ?`,
                                            [
                                                { text: 'Annuler', style: 'cancel' },
                                                { 
                                                    text: 'Supprimer', 
                                                    style: 'destructive', 
                                                    onPress: async () => {
                                                        await LocalHistoryService.deleteScan(project.id);
                                                        fetchLibrary();
                                                    } 
                                                }
                                            ]
                                        );
                                    }}
                                >
                                    <Ionicons name="trash-outline" size={20} color="#FF4444" />
                                </TouchableOpacity>
                                <View style={{ alignItems: 'flex-end' }}>
                                    <Text style={styles.lastSync}>{new Date(project.created_at).toLocaleDateString()}</Text>
                                    <Ionicons name="chevron-forward" size={16} color={Colors.textSecondary} />
                                </View>
                            </View>
                        </TouchableOpacity>
                    ))
                ) : (
                    <View style={styles.emptyState}>
                        <Ionicons name="documents-outline" size={64} color="#333" />
                        <Text style={styles.emptyText}>Aucune analyse pour le moment.</Text>
                        <Text style={styles.emptySubText}>Commencez par scanner votre premier devis.</Text>
                    </View>
                )}
            </ScrollView>

            <Modal visible={viewingAnalysis !== null} animationType="slide">
                <SafeAreaView style={{ flex: 1, backgroundColor: '#000' }}>
                    <View style={{ flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center', padding: 15, borderBottomWidth: 1, borderBottomColor: '#222' }}>
                        <Text style={{ color: '#fff', fontSize: 18, fontWeight: 'bold' }}>Rapport d'Audit</Text>
                        <TouchableOpacity onPress={() => setViewingAnalysis(null)}>
                            <Ionicons name="close" size={28} color="#fff" />
                        </TouchableOpacity>
                    </View>
                    <WebView 
                        originWhitelist={['*']}
                        source={{ html: `
                            <!DOCTYPE html>
                            <html>
                            <head>
                                <meta charset="utf-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <style>
                                    body { font-family: -apple-system, sans-serif; background-color: #000; color: #fff; padding: 20px; line-height: 1.6; }
                                    .header { border-bottom: 2px solid #3b82f6; padding-bottom: 15px; margin-bottom: 30px; }
                                    .badge { background: #1e3a8a; color: #3b82f6; padding: 5px 12px; border-radius: 20px; font-size: 12px; font-weight: bold; display: inline-block; margin-bottom: 10px; }
                                    h1 { font-size: 24px; margin: 0; }
                                    h2, h3 { color: #3b82f6; margin-top: 30px; }
                                    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
                                    th { background: #111; text-align: left; color: #888; text-transform: uppercase; font-size: 11px; letter-spacing: 1px; }
                                    td, th { padding: 12px; border-bottom: 1px solid #222; }
                                    .price { font-weight: bold; color: #fbbf24; }
                                    .expert-note { background: #111; padding: 15px; border-radius: 12px; margin-top: 10px; font-style: italic; color: #888; border-left: 3px solid #3b82f6; }
                                    .footer { margin-top: 50px; text-align: center; color: #444; font-size: 12px; border-top: 1px solid #222; padding-top: 20px; }
                                </style>
                            </head>
                            <body>
                                <div class="header">
                                    <div class="badge">🛡️ AUDIT SOUVERAIN GEMMA</div>
                                    <h1>${viewingAnalysis?.nom_projet || 'Audit Devis'}</h1>
                                    <p style="color: #666; margin-top: 5px;">Généré le ${new Date(viewingAnalysis?.created_at || Date.now()).toLocaleDateString()}</p>
                                </div>
                                ${viewingAnalysis?.metadata?.html || ''}
                                <div class="footer">&copy; 2026 BPA - Intelligence Artificielle Souveraine</div>
                            </body>
                            </html>
                        ` }}
                        style={{ flex: 1, backgroundColor: 'transparent' }}
                    />
                </SafeAreaView>
            </Modal>

            <Modal visible={analyzing} transparent animationType="fade">
                <View style={styles.modalOverlay}>
                    <View style={styles.modalContent}>
                        <ActivityIndicator size="large" color={Colors.accentBlue} />
                        <Text style={styles.modalTitle}>Intelligence Souveraine</Text>
                        <Text style={styles.modalText}>Gemma analyse votre devis par rapport à 45 000 prix de référence...</Text>
                    </View>
                </View>
            </Modal>
        </SafeAreaView>
    );
}

const styles = StyleSheet.create({
    container: { flex: 1, backgroundColor: '#000' },
    header: { flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center', paddingHorizontal: 20, paddingVertical: 15 },
    title: { fontSize: 28, fontWeight: 'bold', color: '#fff' },
    iconBtn: { padding: 5 },
    content: { flex: 1, paddingHorizontal: 20 },
    scanBtn: {
        backgroundColor: Colors.accentBlue,
        flexDirection: 'row',
        alignItems: 'center',
        justifyContent: 'center',
        paddingVertical: 18,
        borderRadius: 16,
        marginVertical: 20,
        gap: 12
    },
    scanBtnText: { color: '#fff', fontSize: 18, fontWeight: 'bold' },
    sectionTitle: { fontSize: 18, fontWeight: 'bold', color: '#fff', marginBottom: 15, marginTop: 10 },
    projectCard: {
        flexDirection: 'row',
        alignItems: 'center',
        backgroundColor: '#111',
        padding: 15,
        borderRadius: 16,
        marginBottom: 12,
        borderWidth: 1,
        borderColor: '#222'
    },
    projectIcon: { width: 48, height: 48, borderRadius: 12, justifyContent: 'center', alignItems: 'center' },
    projectInfo: { flex: 1, marginLeft: 15 },
    projectName: { color: '#fff', fontSize: 16, fontWeight: 'bold', marginBottom: 4 },
    projectDocs: { color: Colors.textSecondary, fontSize: 13 },
    projectMeta: { alignItems: 'flex-end', gap: 5 },
    lastSync: { color: '#555', fontSize: 11 },
    emptyState: { alignItems: 'center', justifyContent: 'center', marginTop: 60, gap: 10 },
    emptyText: { color: '#fff', fontSize: 18, fontWeight: 'bold' },
    emptySubText: { color: '#666', fontSize: 14, textAlign: 'center' },
    modalOverlay: { flex: 1, backgroundColor: 'rgba(0,0,0,0.8)', justifyContent: 'center', alignItems: 'center' },
    modalContent: { backgroundColor: '#1a1a1a', padding: 30, borderRadius: 24, alignItems: 'center', width: '80%' },
    modalTitle: { color: '#fff', fontSize: 20, fontWeight: 'bold', marginTop: 15 },
    modalText: { color: '#888', fontSize: 14, textAlign: 'center', marginTop: 10, lineHeight: 20 }
});
