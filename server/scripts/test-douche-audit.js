const { priceService } = require('../dist/services/PriceService.js');

const articles = [
  {
    designation: "Douches a. Dépose ancienne paroi de douche Main d'oeuvre pour dépose de paroi douche . Compris démontage des joints fixations ou supports, manutention et rangement et d'enlèvement.",
    prix_unitaire_ht: 87.15,
    quantity: 1,
    unite: 'u'
  },
  {
    designation: "b. Paroi de douche Coulissante, verre sécurit, type Water 1400 mm Fourniture et pose d'une paroi de douche avec vitrage de sécurité sur cadre aluminium, y compris fixations. Verre transparent,",
    prix_unitaire_ht: 639.20,
    quantity: 1,
    unite: 'u'
  }
];

console.log('=== TEST AUDIT DEVIS PAROI DE DOUCHE ===');
const analyzed = articles.map((art, idx) => {
  const match = priceService.matchArticleWithDetails(art.designation, art.prix_unitaire_ht, undefined, art.unite);
  const prixRef = match.prixRef;
  const ecart = Math.round(((art.prix_unitaire_ht - prixRef) / prixRef) * 1000) / 10;
  const statut = ecart <= 10 ? 'vert' : ecart <= 20 ? 'jaune' : 'rouge';
  const emoji = statut === 'vert' ? '🟢' : '🔴';
  return {
    numero: idx + 1,
    designation: art.designation,
    quantite: art.quantity,
    unite: art.unite,
    prix_devis: art.prix_unitaire_ht,
    prix_ref: prixRef,
    ecart_pourcent: ecart,
    statut,
    emoji,
    prix_materiau_ref: match.prixMateriauRef,
    unite_materiau_ref: match.uniteMateriauRef,
    ref_article_nom: match.refArticleNom
  };
});

const totalDevis = analyzed.reduce((sum, a) => sum + a.prix_devis, 0);
const totalRef = analyzed.reduce((sum, a) => sum + a.prix_ref, 0);
const ecartGlobal = Math.round(((totalDevis - totalRef) / totalRef) * 1000) / 10;
const materialsBreakdown = priceService.estimateMaterialsBreakdown(analyzed);

analyzed.forEach(a => {
  console.log(a.numero + '. ' + a.designation.substring(0, 50) + '...');
  console.log('   Devis: ' + a.prix_devis + ' € | Ref: ' + a.prix_ref + ' € | Ecart: ' + (a.ecart_pourcent > 0 ? '+' : '') + a.ecart_pourcent + '% | Statut: ' + a.emoji + ' ' + a.statut.toUpperCase());
  console.log('   Ref Name: ' + a.ref_article_nom);
});

console.log('--------------------------------------------------');
console.log('TOTAL DEVIS HT:', totalDevis.toFixed(2), '€ (Attendu: 726.35 €)');
console.log('TOTAL RÉFÉRENCE MARCHÉ HT:', totalRef.toFixed(2), '€');
console.log('ÉCART GLOBAL:', (ecartGlobal > 0 ? '+' : '') + ecartGlobal + '%');
console.log('MATÉRIAUX ESTIMÉS:', materialsBreakdown.total_materiaux_estime_ht, '€ HT');
console.log('MAIN D\'OEUVRE ESTIMÉE:', materialsBreakdown.total_pose_estime_ht, '€ HT');
console.log('LISTE MATÉRIAUX DÉTAILLÉS (' + materialsBreakdown.materiaux_detailles.length + ' références) :');
materialsBreakdown.materiaux_detailles.forEach(m => console.log(' - ' + m.nom + ' : ' + m.cout_total_estime + ' € HT (' + m.norme_ou_dtu + ')'));
