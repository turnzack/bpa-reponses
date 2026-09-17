import express from 'express';
import { sql } from '../config/db';
import { authenticateUser, AuthRequest } from '../middleware/auth.middleware';

const router = express.Router();

// GET /api/scans/history — Historique des scans de l'utilisateur connecté
router.get('/history', authenticateUser, async (req: AuthRequest, res: express.Response) => {
  try {
    const user = req.user;
    if (!user) return res.status(401).json({ error: 'Non authentifié' });

    const scans = await sql`
      SELECT 
        id, scan_id, doc_name, page_count, score, total_devis,
        amount, status, paid_at, created_at
      FROM scan_payments
      WHERE user_id = ${user.id} OR user_email = ${user.email}
      ORDER BY created_at DESC
      LIMIT 50
    `;

    return res.json({ scans, total: scans.length });
  } catch (err: any) {
    console.error('[scans/history]', err.message);
    return res.status(500).json({ error: 'Erreur serveur' });
  }
});

// GET /api/scans/stats — Statistiques globales de l'utilisateur
router.get('/stats', authenticateUser, async (req: AuthRequest, res: express.Response) => {
  try {
    const user = req.user;
    if (!user) return res.status(401).json({ error: 'Non authentifié' });

    const stats = await sql`
      SELECT 
        COUNT(*) as total_scans,
        COUNT(*) FILTER (WHERE status = 'completed') as paid_scans,
        SUM(amount) FILTER (WHERE status = 'completed') as total_spent,
        AVG(score) FILTER (WHERE score IS NOT NULL) as avg_score
      FROM scan_payments
      WHERE user_id = ${user.id} OR user_email = ${user.email}
    `;

    return res.json(stats[0] || {});
  } catch (err: any) {
    return res.status(500).json({ error: 'Erreur serveur' });
  }
});


// GET /api/clients — Liste des "clients" (devis analysés) de l'utilisateur
router.get('/clients', authenticateUser, async (req: AuthRequest, res: express.Response) => {
  try {
    const user = req.user;
    if (!user) return res.status(401).json({ error: 'Non authentifié' });

    // Dériver les clients depuis les scans : chaque doc_name unique = un client
    const rows = await sql`
      SELECT 
        id, scan_id, doc_name, total_devis, score,
        amount, status, paid_at, created_at, page_count,
        fournisseur_nom, fournisseur_siret, devis_numero, devis_date
      FROM scan_payments
      WHERE (user_id = ${user.id} OR user_email = ${user.email})
        AND doc_name IS NOT NULL
      ORDER BY created_at DESC
    `;

    // Grouper par doc_name pour avoir un client par document
    const clientMap = new Map();
    for (const row of rows) {
      const key = row.doc_name || row.scan_id;
      if (!clientMap.has(key)) {
        // Utiliser fournisseur_nom extrait par invoiceParserService si disponible
        const rawDocName = (row.doc_name || 'Document').replace(/\.pdf$/i, '').replace(/_/g, ' ');
        const fournisseurNom = row.fournisseur_nom || rawDocName;
        clientMap.set(key, {
          id: row.id,
          scan_id: row.scan_id,
          doc_name: row.doc_name,
          fournisseur_nom: row.fournisseur_nom,
          fournisseur_siret: row.fournisseur_siret,
          devis_numero: row.devis_numero,
          devis_date: row.devis_date,
          name: fournisseurNom,
          company: fournisseurNom,
          status: row.status === 'completed' ? 'Payé' : 'En attente',
          total: row.total_devis ? `${parseFloat(row.total_devis).toFixed(0)} €` : `${parseFloat(row.amount || '1.99').toFixed(2)} €`,
          total_devis: row.total_devis,
          score: row.score,
          paid_at: row.paid_at,
          created_at: row.created_at,
          page_count: row.page_count,
          scan_count: 1,
        });
      } else {
        // Incrémenter le compteur si même doc_name
        const existing = clientMap.get(key);
        existing.scan_count += 1;
      }
    }

    const clients = Array.from(clientMap.values());
    return res.json({ clients, total: clients.length });
  } catch (err: any) {
    console.error('[clients]', err.message);
    return res.status(500).json({ error: 'Erreur serveur' });
  }
});

export default router;
