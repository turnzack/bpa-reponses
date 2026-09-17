const sampleWithHeader = [
  'patrice.adja@gmail.com',
  'M. MATHY Jean',
  '345 c rue piemente 69009 LYON',
  'DEVIS N° : 20230465 Date : 02/04/2023',
  'N° Désignation TVA Qté / U PUHT PHT',
  'Fourniture et pose des trappes visite -bureau (0,40X0,40) -cuisine (0,30X0,30',
  '20% 2 76,24 € 152,48 €',
  'Découpe murs placo - m2- -cuisine - (1,60x1,20) -local ',
  'disjoncteur (0,65X1,50) + (0,30x1,00',
  '20% 3.5 18,64 € 65,24 €',
  'Fourniture et pose placo, bande à joint, enduit 20% 3.5M2 42,44 € 148,54 €',
  'Préparation surface (ragréage sol) et pose des anciennes dalles ',
  'en vinyle cuisine -m2- (1,50X0,95',
  '20% 1.5M2 49,00 € 73,50 €',
  'Détalonnage porte accès kitchenette ( JE SAIS PAS )',
  'Fourniture et reprise peinture hall, cuisine, local disjoncteur, ',
  'deux couches -m2',
  '20% 10M2 12,29 € 122,90 €',
  'Nettoyage après traveaux 20% 1FORFAIT 63,47 € 63,47 €',
  'Déchèterie 20% 1120 131,59 € 131,59 €',
  'RECAPITULATIF',
  'Total HT : 757,72 €'
].join('\n');

function parsePrice(str) {
  if (!str) return 0;
  let cleaned = str.trim().replace(/[\s\u00A0\u202F€]+/g, '');
  if (/^\d{1,3}(\.\d{3})+,\d{2}$/.test(cleaned)) cleaned = cleaned.replace(/\./g, '').replace(',', '.');
  else if (/^\d{1,3}(,\d{3})+\.\d{2}$/.test(cleaned)) cleaned = cleaned.replace(/,/g, '');
  else if (cleaned.includes(',') && cleaned.includes('.')) {
    if (cleaned.lastIndexOf(',') > cleaned.lastIndexOf('.')) cleaned = cleaned.replace(/\./g, '').replace(',', '.');
    else cleaned = cleaned.replace(/,/g, '');
  } else if (cleaned.includes(',')) cleaned = cleaned.replace(',', '.');
  const val = parseFloat(cleaned);
  return isNaN(val) ? 0 : Math.round(val * 100) / 100;
}

const excludePatterns = [
  /^(total|sous-total|net à payer|acompte|solde|reste à payer|tva|remise|escompte)/i,
  /\b(devis\s*n°?|facture\s*n°?|date\s*:|échéance|validité|page\s+\d|bon pour accord|signature)\b/i,
  /\b(siret|siren|rcs|ape|naf|iban|bic|tva intracommunautaire|conditions de paiement|assurance)\b/i,
  /\b(client|adresse|téléphone|tel|email|contact|société|sas|sarl|eurl|auto-entrepreneur)\b/i,
  /[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}/i,
  /\b(M\.|Mme|Monsieur|Madame|Destinataire)\b/i,
  /\b(rue|avenue|boulevard|bd|chemin|impasse|allée|route|cours|quai|place)\b/i,
  /\b\d{5}\s+[A-ZÀ-ÿ\s-]{2,}\b/i,
  /\b(désignation|puht|pht|pu\s*ht|total\s*ht)\b/i,
  /^(résumé exécutif|articles analysés|prix cohérents|prix élevés|surcoûts|écart global|score de conformité|avis de l'expert|potentiel d'économie|rapport d'audit|synthèse|règlementaire)/i
];

function cleanArticleName(raw) {
  let cleaned = raw
    .replace(/[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}/gi, '')
    .replace(/\b(?:devis\s*n°?\s*[:=]?\s*\d+|date\s*:\s*\d{1,2}[/-]\d{1,2}[/-]\d{2,4}|page\s+\d+\s*\/\s*\d+)\b/gi, '')
    .replace(/\b(?:n°\s*)?désignation\s+(?:tva\s+)?(?:qté|quantité|u|puht|pht|pu\s*ht|total\s*ht)\b/gi, '')
    .replace(/\b(?:M\.|Mme|Monsieur|Madame)\s+[A-ZÀ-ÿ\s-]{2,30}\b/gi, '')
    .replace(/\b\d+\s*(?:c|bis|ter)?\s+(?:rue|avenue|boulevard|bd|chemin|impasse|allée|route|cours|quai|place)\s+[A-ZÀ-ÿ\s-]+\b/gi, '')
    .replace(/\b\d{5}\s+[A-ZÀ-ÿ\s-]{2,}\b/gi, '')
    .replace(/^(?:[0-9]{1,2}[.)\s-]|[A-Z][.)\s-])\s+/, '')
    .replace(/\s{2,}/g, ' ')
    .trim();
  return cleaned;
}

function parseFrenchDevis(text) {
  const lines = text.split('\n').map(l => l.trim()).filter(Boolean);
  const articles = [];
  let pendingText = '';

  for (let i = 0; i < lines.length; i++) {
    const line = lines[i];
    if (/^(total\s*ht|total\s*ttc|recapitulatif|conditions|devis valable|page\s+\d)/i.test(line)) {
      pendingText = '';
      continue;
    }

    if (excludePatterns.some(p => p.test(line))) {
      // Ne pas accumuler les lignes d'en-tête client/entreprise/adresse/email
      continue;
    }

    const fullPattern = /^(.*?)(?:(?:\s+|^)(?:20%|10%|5[.,]5%|5\.5%|20|10|5\.5)\s+)?(\d+(?:[.,]\d+)?)\s*(m²|m2|ml|m3|m|u|unite|unités|forfait|fft|ens|ensemble|kg|l|h|heures?|jours?|pce)?\s+(\d{1,4}(?:[\s\u00A0.]\d{3})*(?:[.,]\d{2})?)\s*€?\s+(\d{1,5}(?:[\s\u00A0.]\d{3})*(?:[.,]\d{2})?)\s*€?$/i;
    
    const m = line.match(fullPattern);
    if (m) {
      let desigPart = m[1].trim();
      let fullDesig = cleanArticleName([pendingText, desigPart].filter(Boolean).join(' ').trim());
      let qte = parsePrice(m[2]) || 1;
      let unit = (m[3] || '').toLowerCase();
      let pu = parsePrice(m[4]);
      let pht = parsePrice(m[5]);

      if (!unit) {
        if (fullDesig.toLowerCase().includes('- m2') || fullDesig.toLowerCase().includes('- m²') || fullDesig.toLowerCase().includes('m2') || fullDesig.toLowerCase().includes('m²')) unit = 'm2';
        else if (fullDesig.toLowerCase().includes('- ml') || fullDesig.toLowerCase().includes('ml')) unit = 'ml';
        else if (fullDesig.toLowerCase().includes('forfait') || fullDesig.toLowerCase().includes('decheterie') || fullDesig.toLowerCase().includes('déchèterie') || fullDesig.toLowerCase().includes('nettoyage')) unit = 'forfait';
        else unit = 'U';
      }

      if (pht > 0 && pu > 0 && Math.abs(pht - (qte * pu)) > 1) {
        if (Math.abs(pht - pu) < 0.1) {
          qte = 1;
          unit = 'forfait';
        } else {
          const calcQte = Math.round((pht / pu) * 10) / 10;
          if (calcQte > 0 && Math.abs(pht - (calcQte * pu)) < 0.1) qte = calcQte;
        }
      }

      if (fullDesig.length > 2 && pu > 0) {
        articles.push({
          designation: fullDesig.replace(/\s+/g, ' ').replace(/\s+20%$/, '').trim(),
          quantity: qte,
          unite: unit,
          prix_unitaire_ht: pu,
          prix_total_ht: pht || Math.round(pu * qte * 100) / 100
        });
        pendingText = '';
        continue;
      }
    }

    if (!excludePatterns.some(p => p.test(line))) {
      pendingText = pendingText ? (pendingText + ' ' + line) : line;
    }
  }

  return articles;
}

const parsed = parseFrenchDevis(sampleWithHeader);
console.log('Result count:', parsed.length);
console.log(JSON.stringify(parsed, null, 2));
