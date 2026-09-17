import fs from 'fs';
import path from 'path';

export interface PriceArticle {
    id: string;
    nom: string;
    type: 'ARTICLE' | 'OUVRAGE' | 'FAMILLE' | 'CHAPITRE' | 'LOT';
    prix?: number;
    unite?: string;
    lotId?: string;
    lotNom?: string;
    chapitreNom?: string;
    ouvrageNom?: string;
    source?: 'TRAVAUX' | 'MATERIAUX';
    children?: PriceArticle[];
}

export class PriceService {
    private library: Record<string, PriceArticle> = {};
    private materialsLibrary: Record<string, PriceArticle> = {};
    private flatWorksArticles: PriceArticle[] = [];
    private flatMaterialsArticles: PriceArticle[] = [];
    private isLoaded: boolean = false;
    private isMaterialsLoaded: boolean = false;

    constructor() {
        this.loadLibraries();
    }

    private loadLibraries() {
        this.loadWorksLibrary();
        this.loadMaterialsLibrary();
    }

    private loadWorksLibrary() {
        try {
            const libraryPath = path.join(__dirname, '..', '..', 'data', 'bibliotheque_prix.json');
            if (fs.existsSync(libraryPath)) {
                const data = fs.readFileSync(libraryPath, 'utf8');
                const parsed = JSON.parse(data);
                
                if (parsed.lots && Array.isArray(parsed.lots)) {
                    this.library = {};
                    parsed.lots.forEach((lot: PriceArticle) => {
                        this.library[lot.id] = lot;
                        this.flattenArticles(lot, lot.id, lot.nom, '', '', 'TRAVAUX', this.flatWorksArticles);
                    });
                } else {
                    this.library = parsed;
                    Object.entries(parsed).forEach(([tradeId, lot]: [string, any]) => {
                        this.flattenArticles(lot, tradeId, lot.nom || tradeId, '', '', 'TRAVAUX', this.flatWorksArticles);
                    });
                }
                
                this.isLoaded = true;
                console.log(`[PriceService] Works Library loaded with ${Object.keys(this.library).length} trades (${this.flatWorksArticles.length} articles).`);
            } else {
                console.warn('[PriceService] Price library file not found at:', libraryPath);
            }
        } catch (error) {
            console.error('[PriceService] Failed to load works library:', error);
        }
    }

    private loadMaterialsLibrary() {
        try {
            const materialsPath = path.join(__dirname, '..', '..', 'data', 'bibliotheque_materiaux.json');
            if (fs.existsSync(materialsPath)) {
                const data = fs.readFileSync(materialsPath, 'utf8');
                const parsed = JSON.parse(data);
                
                if (parsed.lots && Array.isArray(parsed.lots)) {
                    this.materialsLibrary = {};
                    parsed.lots.forEach((lot: PriceArticle) => {
                        this.materialsLibrary[lot.id] = lot;
                        this.flattenArticles(lot, lot.id, lot.nom, '', '', 'MATERIAUX', this.flatMaterialsArticles);
                    });
                }
                
                this.isMaterialsLoaded = true;
                console.log(`[PriceService] Materials Library loaded with ${Object.keys(this.materialsLibrary).length} lots (${this.flatMaterialsArticles.length} articles).`);
            } else {
                console.warn('[PriceService] Materials library file not found at:', materialsPath);
            }
        } catch (error) {
            console.error('[PriceService] Failed to load materials library:', error);
        }
    }

    private flattenArticles(
        node: PriceArticle,
        lotId: string,
        lotNom: string,
        chapitreNom: string,
        ouvrageNom: string,
        source: 'TRAVAUX' | 'MATERIAUX',
        outputList: PriceArticle[]
    ) {
        if (node.type === 'CHAPITRE') chapitreNom = node.nom;
        if (node.type === 'OUVRAGE') ouvrageNom = node.nom;

        if (node.type === 'ARTICLE' && node.nom && node.prix) {
            outputList.push({
                id: node.id,
                nom: node.nom,
                type: 'ARTICLE',
                prix: node.prix,
                unite: node.unite || 'U',
                lotId,
                lotNom,
                chapitreNom,
                ouvrageNom,
                source
            });
        }

        if (node.children) {
            for (const child of node.children) {
                this.flattenArticles(child, lotId, lotNom, chapitreNom, ouvrageNom, source, outputList);
            }
        }
    }

    public findPricesForTrade(tradeId: string): PriceArticle | null {
        return this.library[tradeId] || null;
    }

    public findMaterialsForTrade(tradeId: string): PriceArticle | null {
        return this.materialsLibrary[tradeId] || null;
    }

    /**
     * Recherche ciblée dans un corps d'état spécifique (fourniture + pose)
     */
    public searchInTrade(tradeId: string, keywords: string[], maxResults: number = 10): PriceArticle[] {
        if (!tradeId) return this.searchAllTrades(keywords, maxResults);
        const normalizedTrade = tradeId.toLowerCase().trim();
        const tradeArticles = this.flatWorksArticles.filter(art => 
            (art.lotId && art.lotId.toLowerCase().includes(normalizedTrade)) ||
            (art.lotNom && art.lotNom.toLowerCase().includes(normalizedTrade))
        );
        const targetList = tradeArticles.length > 0 ? tradeArticles : this.flatWorksArticles;
        return this.searchInList(targetList, keywords, maxResults);
    }

    /**
     * Recherche dans la bibliothèque de travaux (pose + fourniture)
     */
    public searchAllTrades(keywords: string[], maxResults: number = 10): PriceArticle[] {
        return this.searchInList(this.flatWorksArticles, keywords, maxResults);
    }

    /**
     * Recherche dans la bibliothèque de matériaux seuls (fournitures)
     */
    public searchMaterials(keywords: string[], maxResults: number = 10): PriceArticle[] {
        return this.searchInList(this.flatMaterialsArticles, keywords, maxResults);
    }

    /**
     * Recherche globale combinée (travaux + matériaux)
     */
    public searchAll(keywords: string[], maxResults: number = 15): PriceArticle[] {
        const works = this.searchInList(this.flatWorksArticles, keywords, maxResults);
        const materials = this.searchInList(this.flatMaterialsArticles, keywords, maxResults);
        
        const combined = [...works, ...materials];
        combined.sort((a: any, b: any) => (b._score || 0) - (a._score || 0));
        return combined.slice(0, maxResults);
    }

    /**
     * Analyse et associe une ligne de devis avec les prix de référence (travaux + matériaux)
     */
    public matchArticleWithDetails(designation: string, priceUnit?: number, tradeHint?: string): {
        detectedTrade: string;
        lotNom: string;
        chapitreNom: string;
        ouvrageNom: string;
        refArticleNom: string;
        prixRef: number;
        uniteRef: string;
        prixMateriauRef?: number;
        uniteMateriauRef?: string;
        refMateriauNom?: string;
        source: string;
        confidence: number;
    } {
        const lower = (designation || '').toLowerCase();
        const keywords = lower
            .replace(/[\d,.;:!?()\[\]{}"'\\\/+-]/g, ' ')
            .split(/\s+/)
            .filter((w: string) => w.length > 2);
        
        const stopWords = ['pour', 'dans', 'avec', 'sans', 'sur', 'type', 'de', 'du', 'des', 'le', 'la', 'les', 'un', 'une', 'par', 'les', 'mise', 'pose', 'fourniture'];
        const significantKeywords = keywords.filter((w: string) => !stopWords.includes(w));

        const detectedTrade = tradeHint || this.detectTradeFromKeywords(significantKeywords) || 'general';

        // 1. Recherche de prestation complète (fourniture + pose) dans bibliotheque_prix.json
        let worksResults: PriceArticle[] = [];
        if (detectedTrade && detectedTrade !== 'general') {
            worksResults = this.searchInTrade(detectedTrade, significantKeywords, 5);
        }
        if (worksResults.length === 0) {
            worksResults = this.searchAllTrades(significantKeywords, 5);
        }

        // 2. Recherche de matériau seul dans bibliotheque_materiaux.json
        const materialsResults = this.searchMaterials(significantKeywords, 5);

        const bestWork = worksResults[0];
        const bestMaterial = materialsResults[0];

        let refPrice = bestWork?.prix || 0;
        let refUnit = bestWork?.unite || 'U';

        // Si le prix bibliothèque est manquant mais qu'on a un prix devis, estimation raisonnable
        if (!refPrice && priceUnit && priceUnit > 0) {
            refPrice = Math.round(priceUnit * 0.92 * 100) / 100;
        }

        const confidence = bestWork ? Math.min(95, 60 + (bestWork as any)._score * 5) : 65;

        return {
            detectedTrade: bestWork?.lotId || detectedTrade,
            lotNom: bestWork?.lotNom || 'Tous Corps d\'État',
            chapitreNom: bestWork?.chapitreNom || '',
            ouvrageNom: bestWork?.ouvrageNom || '',
            refArticleNom: bestWork?.nom || designation,
            prixRef: refPrice,
            uniteRef: refUnit,
            prixMateriauRef: bestMaterial?.prix || undefined,
            uniteMateriauRef: bestMaterial?.unite || undefined,
            refMateriauNom: bestMaterial?.nom || undefined,
            source: bestWork ? 'bibliotheque_prix.json' : 'barème moyen BTP',
            confidence
        };
    }

    /**
     * Génère l'estimation détaillée des coûts de matériaux et le descriptif technique complet pour un devis
     */
    public estimateMaterialsBreakdown(articles: Array<{
        designation: string;
        quantite: number;
        unite: string;
        prix_devis: number;
        prix_ref?: number;
    }>): {
        total_devis_ht: number;
        total_ref_ht: number;
        total_materiaux_estime_ht: number;
        total_pose_estime_ht: number;
        pourcentage_materiaux: number;
        pourcentage_pose: number;
        materiaux_detailles: Array<{
            nom: string;
            corps_etat: string;
            famille: string;
            quantite_estimee: number;
            unite: string;
            prix_unitaire_ref: number;
            cout_total_estime: number;
            descriptif_technique: string;
            norme_ou_dtu: string;
            article_devis_associe: string;
        }>;
        synthese_fournitures: string;
    } {
        let totalDevis = 0;
        let totalRef = 0;
        let totalMateriaux = 0;
        const materiauxDetailles: any[] = [];

        for (const art of articles) {
            const qte = parseFloat(art.quantite as any) || 1;
            const prixDev = parseFloat(art.prix_devis as any) || 0;
            const prixRefArt = parseFloat(art.prix_ref as any) || (prixDev * 0.92);
            
            totalDevis += prixDev * qte;
            totalRef += prixRefArt * qte;

            const desigLower = (art.designation || '').toLowerCase();
            const keywords = desigLower
                .replace(/[\d,.;:!?()\[\]{}"'\\\/+-]/g, ' ')
                .split(/\s+/)
                .filter((w: string) => w.length > 2);

            const trade = this.detectTradeFromKeywords(keywords) || 'general';

            // Recherche des fournitures spécifiques associées dans la bibliothèque
            const foundMaterials = this.searchMaterials(keywords, 2);

            if (trade === 'peinture') {
                const surface = art.unite?.toLowerCase().includes('m2') || art.unite?.toLowerCase().includes('m²') ? qte : qte * 10;
                
                // 1. Impression / Sous-couche
                const qteImpression = Math.round((surface / 9) * 10) / 10; // ~9 m²/L
                const prixImpression = foundMaterials.find(m => m.nom.toLowerCase().includes('impression') || m.nom.toLowerCase().includes('primaire'))?.prix || 4.20;
                const coutImpression = Math.round(qteImpression * prixImpression * 100) / 100;
                
                // 2. Peinture de finition (2 couches)
                const qteFinition = Math.round((surface / 4.5) * 10) / 10; // ~4.5 m²/L pour 2 couches
                const prixFinition = foundMaterials.find(m => m.nom.toLowerCase().includes('finition') || m.nom.toLowerCase().includes('acrylique') || m.nom.toLowerCase().includes('mat'))?.prix || 6.80;
                const coutFinition = Math.round(qteFinition * prixFinition * 100) / 100;

                // 3. Enduit et préparation
                const qteEnduit = Math.round(surface * 0.6 * 10) / 10; // ~0.6 kg/m²
                const prixEnduit = 1.85;
                const coutEnduit = Math.round(qteEnduit * prixEnduit * 100) / 100;

                // 4. Consommables de protection
                const coutProtection = Math.round(Math.max(15, surface * 0.9) * 100) / 100;

                totalMateriaux += coutImpression + coutFinition + coutEnduit + coutProtection;

                materiauxDetailles.push(
                    {
                        nom: "Impression hydrofuge régulatrice de fond",
                        corps_etat: "Peinture",
                        famille: "Primaire d'accroche",
                        quantite_estimee: qteImpression,
                        unite: "Litre",
                        prix_unitaire_ref: prixImpression,
                        cout_total_estime: coutImpression,
                        descriptif_technique: "Sous-couche acrylique microporeuse fixante anti-auréoles, bloque les fonds absorbants ou tachés par l'eau.",
                        norme_ou_dtu: "DTU 59.1 / NF Environnement",
                        article_devis_associe: art.designation
                    },
                    {
                        nom: "Peinture finition velours / mate dépolluante (2 couches)",
                        corps_etat: "Peinture",
                        famille: "Finition",
                        quantite_estimee: qteFinition,
                        unite: "Litre",
                        prix_unitaire_ref: prixFinition,
                        cout_total_estime: coutFinition,
                        descriptif_technique: "Peinture émulsion acrylique haute couvrance, lavable classe 1, aspect soigné sans traces de reprise.",
                        norme_ou_dtu: "Ecolabel Européen / NF EN 13300",
                        article_devis_associe: art.designation
                    },
                    {
                        nom: "Enduit de lissage et ratissage en pâte",
                        corps_etat: "Peinture",
                        famille: "Préparation des fonds",
                        quantite_estimee: qteEnduit,
                        unite: "Kg",
                        prix_unitaire_ref: prixEnduit,
                        cout_total_estime: coutEnduit,
                        descriptif_technique: "Enduit prêt à l'emploi extra-fin pour surfaçage soigné avant mise en peinture.",
                        norme_ou_dtu: "DTU 59.1",
                        article_devis_associe: art.designation
                    },
                    {
                        nom: "Kit consommables (polyane 40µm, adhésif masquage, abrasifs)",
                        corps_etat: "Peinture",
                        famille: "Protection & Consommables",
                        quantite_estimee: 1,
                        unite: "Forfait",
                        prix_unitaire_ref: coutProtection,
                        cout_total_estime: coutProtection,
                        descriptif_technique: "Film polyane étanche de protection des sols et mobilier + rubans adhésifs sans résidu.",
                        norme_ou_dtu: "Conformité Chantier Propre",
                        article_devis_associe: art.designation
                    }
                );
            } else if (trade === 'plomberie') {
                const matRef = foundMaterials[0]?.prix || (prixRefArt * 0.42);
                const coutTotMat = Math.round(matRef * qte * 100) / 100;
                totalMateriaux += coutTotMat;

                materiauxDetailles.push({
                    nom: foundMaterials[0]?.nom || "Fournitures et composants de plomberie sanitaire",
                    corps_etat: "Plomberie & Sanitaire",
                    famille: "Équipement & Réseau",
                    quantite_estimee: qte,
                    unite: art.unite || "U",
                    prix_unitaire_ref: Math.round(matRef * 100) / 100,
                    cout_total_estime: coutTotMat,
                    descriptif_technique: "Tuyauterie multicouche/cuivre, raccords à sertir NF, vannes d'isolement quart de tour et joints élastomère.",
                    norme_ou_dtu: "DTU 60.1 / ACS (Attestation de Conformité Sanitaire)",
                    article_devis_associe: art.designation
                });
            } else if (trade === 'electricite') {
                const matRef = foundMaterials[0]?.prix || (prixRefArt * 0.40);
                const coutTotMat = Math.round(matRef * qte * 100) / 100;
                totalMateriaux += coutTotMat;

                materiauxDetailles.push({
                    nom: foundMaterials[0]?.nom || "Appareillage et câblage normalisé NF",
                    corps_etat: "Électricité",
                    famille: "Distribution & Appareillage",
                    quantite_estimee: qte,
                    unite: art.unite || "U",
                    prix_unitaire_ref: Math.round(matRef * 100) / 100,
                    cout_total_estime: coutTotMat,
                    descriptif_technique: "Conducteurs H07V-U / câbles R2V sous gaine ICTA, bornes automatiques Wago et protections modulaires.",
                    norme_ou_dtu: "Norme NF C 15-100",
                    article_devis_associe: art.designation
                });
            } else if (trade === 'carrelage') {
                const surface = art.unite?.toLowerCase().includes('m2') || art.unite?.toLowerCase().includes('m²') ? qte : qte;
                const coutColle = Math.round(surface * 4.80 * 100) / 100; // ~4.80 €/m² de mortier colle C2S1 + joint
                totalMateriaux += coutColle;

                materiauxDetailles.push(
                    {
                        nom: "Mortier colle déformable haute adhérence (C2S1)",
                        corps_etat: "Carrelage",
                        famille: "Colle & Adhérence",
                        quantite_estimee: Math.round(surface * 5),
                        unite: "Kg",
                        prix_unitaire_ref: 0.75,
                        cout_total_estime: Math.round(surface * 5 * 0.75 * 100) / 100,
                        descriptif_technique: "Mortier colle amélioré résistant au glissement, adapté pour grès cérame tous formats.",
                        norme_ou_dtu: "DTU 52.2 / Certifié CSTB",
                        article_devis_associe: art.designation
                    },
                    {
                        nom: "Mortier de jointoiement hydrofuge fin anti-moisissure",
                        corps_etat: "Carrelage",
                        famille: "Joints & Finition",
                        quantite_estimee: Math.round(surface * 0.5 * 10) / 10,
                        unite: "Kg",
                        prix_unitaire_ref: 2.20,
                        cout_total_estime: Math.round(surface * 0.5 * 2.20 * 100) / 100,
                        descriptif_technique: "Joint étanche souple grain fin (2 à 15 mm), haute résistance aux agressions chimiques et à l'eau.",
                        norme_ou_dtu: "NF EN 13888 (CG2 WA)",
                        article_devis_associe: art.designation
                    }
                );
            } else {
                // Autres corps d'état
                const matRatio = 0.35;
                const matRef = foundMaterials[0]?.prix || (prixRefArt * matRatio);
                const coutTotMat = Math.round(matRef * qte * 100) / 100;
                totalMateriaux += coutTotMat;

                materiauxDetailles.push({
                    nom: foundMaterials[0]?.nom || `Fournitures de mise en œuvre (${art.designation})`,
                    corps_etat: trade !== 'general' ? trade.toUpperCase() : "Tous Corps d'État",
                    famille: "Matériaux & Quincaillerie",
                    quantite_estimee: qte,
                    unite: art.unite || "U",
                    prix_unitaire_ref: Math.round(matRef * 100) / 100,
                    cout_total_estime: coutTotMat,
                    descriptif_technique: "Matériaux conformes aux normes professionnelles du bâtiment et fiches techniques fabricants.",
                    norme_ou_dtu: "Normes BTP / Avis Technique CSTB",
                    article_devis_associe: art.designation
                });
            }
        }

        totalMateriaux = Math.round(totalMateriaux * 100) / 100;
        const totalPose = Math.max(0, Math.round((totalDevis - totalMateriaux) * 100) / 100);
        const pctMat = totalDevis > 0 ? Math.round((totalMateriaux / totalDevis) * 100) : 32;
        const pctPose = 100 - pctMat;

        // Calcul des pourcentages de chaque matériau dans le budget fournitures
        const materiauxAvecPart = materiauxDetailles.map(m => ({
            ...m,
            part_budget_materiaux_pct: totalMateriaux > 0 ? Math.round((m.cout_total_estime / totalMateriaux) * 1000) / 10 : 0
        }));

        // -------------------------------------------------------------
        // CALCUL DE LA DURÉE ESTIMÉE DES TRAVAUX (Cadences BTP)
        // -------------------------------------------------------------
        let totalHeuresOuvrage = 0;
        let nbPhases = 0;
        const planningPhases: Array<{ phase: string; titre: string; description: string; duree_estimee: string }> = [];

        for (const art of articles) {
            const q = parseFloat(art.quantite as any) || 1;
            const d = (art.designation || '').toLowerCase();

            if (d.includes('peint') || d.includes('enduit') || d.includes('ratissage')) {
                totalHeuresOuvrage += q * 0.85;
            } else if (d.includes('carrel') || d.includes('faïence') || d.includes('sol')) {
                totalHeuresOuvrage += q * 0.90;
            } else if (d.includes('chauffe-eau') || d.includes('cumulus')) {
                totalHeuresOuvrage += 4.5 * q;
            } else if (d.includes('wc') || d.includes('toilette') || d.includes('lavabo') || d.includes('robinet') || d.includes('douche')) {
                totalHeuresOuvrage += 3.0 * q;
            } else if (d.includes('tableau') && d.includes('élec')) {
                totalHeuresOuvrage += 7.0 * q;
            } else if (d.includes('prise') || d.includes('interrupteur') || d.includes('luminaire') || d.includes('point')) {
                totalHeuresOuvrage += 1.5 * q;
            } else if (d.includes('cloison') || d.includes('placo') || d.includes('ba13') || d.includes('doublage')) {
                totalHeuresOuvrage += 1.1 * q;
            } else {
                const prixLigne = (parseFloat(art.prix_devis as any) || 50) * q;
                totalHeuresOuvrage += (prixLigne * 0.65) / 45; // Base taux horaire moyen 45€/h
            }
        }

        totalHeuresOuvrage = Math.max(7, Math.round(totalHeuresOuvrage * 10) / 10);
        const joursOuvrierSeul = Math.max(1, Math.ceil(totalHeuresOuvrage / 7));
        const equipeCompagnons = joursOuvrierSeul > 5 ? 2 : 1;
        const joursEstimesChantier = Math.max(1, Math.ceil(totalHeuresOuvrage / (7 * equipeCompagnons)));

        // Construction du planning prévisionnel
        planningPhases.push({
            phase: "Phase 1",
            titre: "Préparation & Protection du site",
            description: "Installation chantier, bâchage polyane étanche des sols et mobiliers, dépose éventuelle, décapage et assainissement des supports.",
            duree_estimee: `${Math.max(0.5, Math.round((joursEstimesChantier * 0.2) * 10) / 10)} jour(s)`
        });

        planningPhases.push({
            phase: "Phase 2",
            titre: "Gros œuvre / Réseaux & Préparation des fonds",
            description: "Passage des réseaux / reprises plomberie-élec, ragréage / ratissage plâtre 2 passes et pose des éléments structurels.",
            duree_estimee: `${Math.max(1, Math.round((joursEstimesChantier * 0.5) * 10) / 10)} jour(s)`
        });

        planningPhases.push({
            phase: "Phase 3",
            titre: "Finitions, Séchage & Nettoyage soigné",
            description: "Application sous-couche + 2 couches de finition, joints étanches, contrôles de conformité technique et repli de chantier.",
            duree_estimee: `${Math.max(0.5, Math.round((joursEstimesChantier * 0.3) * 10) / 10)} jour(s)`
        });

        const delaisIncompressibles = "Prévoir 24h à 48h de temps de séchage incompressible entre les couches d'enduit/ragréage et l'application des couches de finition.";

        // -------------------------------------------------------------
        // CALCUL DU RÉCAPITULATIF FINANCIER COMPLET
        // -------------------------------------------------------------
        const ecartGlobalMontant = Math.round((totalDevis - totalRef) * 100) / 100;
        const ecartGlobalPct = totalRef > 0 ? Math.round(((totalDevis - totalRef) / totalRef) * 1000) / 10 : 0;
        const economiePotentielle = ecartGlobalMontant > 0 ? ecartGlobalMontant : 0;
        const tvaEstimee10 = Math.round(totalDevis * 0.10 * 100) / 100;
        const totalDevisTtc10 = Math.round((totalDevis + tvaEstimee10) * 100) / 100;

        let verdictCout = "Conforme aux barèmes moyens BTP";
        if (ecartGlobalPct > 20) {
            verdictCout = `Surcoût important (+${ecartGlobalPct}%) - Négociation conseillée`;
        } else if (ecartGlobalPct > 10) {
            verdictCout = `Légèrement supérieur au marché (+${ecartGlobalPct}%)`;
        } else if (ecartGlobalPct < -10) {
            verdictCout = `Tarif très compétitif (-${Math.abs(ecartGlobalPct)}% sous le marché)`;
        }

        const recapitulatifCouts = {
            total_devis_ht: Math.round(totalDevis * 100) / 100,
            tva_estimee_10: tvaEstimee10,
            total_devis_ttc: totalDevisTtc10,
            total_reference_marche_ht: Math.round(totalRef * 100) / 100,
            total_materiaux_estime_ht: totalMateriaux,
            total_pose_estime_ht: totalPose,
            pourcentage_materiaux: pctMat,
            pourcentage_pose: pctPose,
            ecart_global_montant_ht: ecartGlobalMontant,
            ecart_global_pourcent: ecartGlobalPct,
            economie_potentielle_ht: economiePotentielle,
            verdict_cout: verdictCout
        };

        const dureeEstimee = {
            heures_ouvrages_total: totalHeuresOuvrage,
            jours_ouvres_estimes: joursEstimesChantier,
            equipe_recommandee: `${equipeCompagnons} technicien(s) / compagnon(s) qualifié(s)`,
            delais_incompressibles: delaisIncompressibles,
            planning_phases: planningPhases
        };

        const syntheseFournitures = `Coût des matériaux estimé à ${totalMateriaux.toFixed(2)} € HT (${pctMat}% du montant global), main d'œuvre / pose à ${totalPose.toFixed(2)} € HT (${pctPose}%). Durée estimée : ~${joursEstimesChantier} jour(s) ouvré(s) (${totalHeuresOuvrage}h de travail).`;

        return {
            total_devis_ht: Math.round(totalDevis * 100) / 100,
            total_ref_ht: Math.round(totalRef * 100) / 100,
            total_materiaux_estime_ht: totalMateriaux,
            total_pose_estime_ht: totalPose,
            pourcentage_materiaux: pctMat,
            pourcentage_pose: pctPose,
            recapitulatif_couts: recapitulatifCouts,
            duree_estimee: dureeEstimee,
            materiaux_detailles: materiauxAvecPart,
            synthese_fournitures: syntheseFournitures
        };
    }

    private searchInList(articles: PriceArticle[], keywords: string[], maxResults: number): PriceArticle[] {
        if (!keywords || keywords.length === 0) return [];
        const cleanKws = keywords.map(k => k.trim().toLowerCase()).filter(k => k.length > 1);
        if (cleanKws.length === 0) return [];

        const scored: { article: PriceArticle; score: number }[] = [];

        for (const art of articles) {
            const nomLower = (art.nom || '').toLowerCase();
            const ouvLower = (art.ouvrageNom || '').toLowerCase();
            const chapLower = (art.chapitreNom || '').toLowerCase();

            let matchScore = 0;
            for (const kw of cleanKws) {
                if (nomLower.includes(kw)) {
                    matchScore += 3;
                } else if (ouvLower.includes(kw)) {
                    matchScore += 2;
                } else if (chapLower.includes(kw)) {
                    matchScore += 1;
                }
            }

            if (matchScore > 0) {
                const articleWithScore = { ...art, _score: matchScore } as any;
                scored.push({ article: articleWithScore, score: matchScore });
            }
        }

        scored.sort((a, b) => b.score - a.score);
        return scored.slice(0, maxResults).map(s => s.article);
    }

    /**
     * Détecte le métier le plus pertinent basé sur les mots-clés
     */
    public detectTradeFromKeywords(keywords: string[]): string | null {
        const tradeKeywords: Record<string, string[]> = {
            'electricite': ['élec', 'électrique', 'courant', 'câble', 'prise', 'interrupteur', 'disjoncteur', 'tableau', 'ampoule', 'luminaire'],
            'plomberie': ['plomb', 'eau', 'robinet', 'tuyau', 'canalisation', 'évacuation', 'wc', 'toilettes', 'douche', 'baignoire', 'chauffe-eau'],
            'menuiserie': ['bois', 'porte', 'fenêtre', 'parquet', 'escalier', 'placard', 'menuis', 'dormant', 'ouvrant'],
            'peinture': ['peint', 'couleur', 'enduit', 'ravalement', 'façade', 'décoration', 'impression', 'lessivage', 'ratissage'],
            'couverture': ['toit', 'tuile', 'ardoise', 'charpent', 'couvreur', 'étanchéité', 'zinc', 'gouttière'],
            'maconnerie': ['béton', 'ciment', 'brique', 'parpaing', 'fondation', 'dalle', 'mur', 'maçon', 'fouille'],
            'isolation': ['isol', 'laine', 'thermique', 'phonique', 'double vitrage', 'polyane'],
            'chauffage': ['chauff', 'radiateur', 'chaudière', 'pompe', 'climatisation', 'ventilation', 'vmc'],
            'carrelage': ['carrel', 'faïence', 'plinthe', 'joint', 'chape', 'ragréage', 'grès'],
            'revetements_de_sol': ['moquette', 'stratifié', 'vinyle', 'parquet', 'sol'],
            'amenagement_de_jardin': ['jardin', 'terrasse', 'clôture', 'portail', 'aménagemen', 'paysage', 'engazonnement', 'haie', 'terrassement'],
            'serrurerie': ['serrure', 'verrou', 'blindée', 'cylindre', 'gâche', 'crémone']
        };

        let bestTrade: string | null = null;
        let bestScore = 0;

        for (const [tradeId, tradeKeywordsList] of Object.entries(tradeKeywords)) {
            const score = keywords.filter(kw => 
                tradeKeywordsList.some(tk => kw.toLowerCase().includes(tk))
            ).length;

            if (score > bestScore) {
                bestScore = score;
                bestTrade = tradeId;
            }
        }

        return bestTrade;
    }

    public getStatus() {
        return {
            isLoaded: this.isLoaded,
            isMaterialsLoaded: this.isMaterialsLoaded,
            worksTradesCount: Object.keys(this.library).length,
            worksArticlesCount: this.flatWorksArticles.length,
            materialsLotsCount: Object.keys(this.materialsLibrary).length,
            materialsArticlesCount: this.flatMaterialsArticles.length
        };
    }
}

export const priceService = new PriceService();
