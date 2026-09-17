// Service client de paiement Stripe pour débloquer les rapports d'analyse de devis
// Compatible avec le backend BPA (Neon PostgreSQL + Stripe)
import { Platform, Linking } from 'react-native';
import { CONFIG } from '@/constants/Config';

export interface ScanPaymentStatus {
    paid: boolean;
    scanId: string;
    payment?: any;
    error?: string;
}

export class StripePaymentService {
    private static instance: StripePaymentService;
    private activePollings: { [key: string]: any } = {};

    private constructor() {}

    public static getInstance(): StripePaymentService {
        if (!StripePaymentService.instance) {
            StripePaymentService.instance = new StripePaymentService();
        }
        return StripePaymentService.instance;
    }

    /**
     * Résoudre le token JWT disponible (localStorage sur Web, mémoire sinon)
     */
    private async resolveToken(token?: string): Promise<string | undefined> {
        if (token) return token;
        if (Platform.OS === 'web' && typeof window !== 'undefined') {
            const webToken = localStorage.getItem('kirov5_jwt_token') || localStorage.getItem('bpa_token');
            if (webToken) return webToken;
        }
        return undefined;
    }

    /**
     * Vérifier si un rapport de devis (scanId) a été payé dans Neon PostgreSQL
     * Route: POST /api/payments/check-scan-payment
     */
    public async checkPayment(scanId: string, token?: string): Promise<boolean> {
        try {
            const resolvedToken = await this.resolveToken(token);
            const headers: Record<string, string> = { 'Content-Type': 'application/json' };
            if (resolvedToken) headers['Authorization'] = `Bearer ${resolvedToken}`;

            const res = await fetch(`${CONFIG.BACKEND_URL}/api/payments/check-scan-payment`, {
                method: 'POST',
                headers,
                body: JSON.stringify({ scanId, pageCount: pageCount || 1 })
            });

            if (!res.ok) {
                // Fallback localStorage si l'API échoue
                if (Platform.OS === 'web' && typeof window !== 'undefined') {
                    if (localStorage.getItem('bpa_paid_scan_' + scanId) === 'true' ||
                        localStorage.getItem('bpa_latest_paid') === 'true') {
                        return true;
                    }
                }
                return false;
            }
            const data = await res.json();
            return data.hasValidPayment === true || data.paid === true;
        } catch (err) {
            console.warn('[StripePaymentService] Erreur checkPayment:', err);
            if (Platform.OS === 'web' && typeof window !== 'undefined') {
                if (localStorage.getItem('bpa_paid_scan_' + scanId) === 'true' ||
                    localStorage.getItem('bpa_latest_paid') === 'true') {
                    return true;
                }
            }
            return false;
        }
    }

    /**
     * Créer une session Stripe Checkout pour débloquer le scan (1.99€)
     * Route: POST /api/stripe/create-scan-payment
     */
    public async createCheckoutSession(scanId: string, token?: string, pageCount?: number): Promise<{ url?: string; sessionId?: string; pageCount?: number; totalAmount?: number; error?: string }> {
        try {
            const resolvedToken = await this.resolveToken(token);
            const headers: Record<string, string> = { 'Content-Type': 'application/json' };
            if (resolvedToken) headers['Authorization'] = `Bearer ${resolvedToken}`;

            console.log('[StripePaymentService] Création session Stripe pour scan:', scanId);
            const res = await fetch(`${CONFIG.BACKEND_URL}/api/stripe/create-scan-payment`, {
                method: 'POST',
                headers,
                body: JSON.stringify({ scanId })
            });

            if (!res.ok) {
                const errText = await res.text();
                throw new Error(`Erreur serveur: ${res.status} - ${errText}`);
            }

            const data = await res.json();
            return { url: data.url, sessionId: data.sessionId, pageCount: data.pageCount, totalAmount: data.totalAmount };
        } catch (err: any) {
            console.error('[StripePaymentService] Erreur createCheckoutSession:', err);
            return { error: err.message || 'Impossible de créer la session de paiement' };
        }
    }

    /**
     * Vérifier directement une session Stripe par son ID et mettre à jour Neon
     * Route: POST /api/payments/verify-checkout-session
     * Appelé immédiatement après le retour de Stripe (avec session_id dans l'URL)
     */
    public async verifyCheckoutSession(sessionId: string, scanId: string, token?: string): Promise<{ success: boolean; hasValidPayment: boolean }> {
        try {
            const resolvedToken = await this.resolveToken(token);
            const headers: Record<string, string> = { 'Content-Type': 'application/json' };
            if (resolvedToken) headers['Authorization'] = `Bearer ${resolvedToken}`;

            console.log('[StripePaymentService] Vérification session Stripe:', sessionId, 'scan:', scanId);
            const res = await fetch(`${CONFIG.BACKEND_URL}/api/payments/verify-checkout-session`, {
                method: 'POST',
                headers,
                body: JSON.stringify({ sessionId, scanId })
            });

            if (!res.ok) return { success: false, hasValidPayment: false };
            const data = await res.json();
            return { success: data.success === true, hasValidPayment: data.hasValidPayment === true };
        } catch (err: any) {
            console.error('[StripePaymentService] Erreur verifyCheckoutSession:', err);
            return { success: false, hasValidPayment: false };
        }
    }

    /**
     * Polling en arrière-plan pour détecter la validation du paiement en temps réel
     */
    public startPaymentPolling(scanId: string, token: string | undefined, onPaid: () => void, maxAttempts = 40): void {
        this.stopPaymentPolling(scanId);
        let attempts = 0;
        console.log(`[StripePaymentService] Démarrage polling paiement pour ${scanId}...`);

        const interval = setInterval(async () => {
            attempts++;
            const isPaid = await this.checkPayment(scanId, token);
            if (isPaid) {
                console.log(`[StripePaymentService] ✅ Paiement détecté pour ${scanId}!`);
                this.stopPaymentPolling(scanId);
                onPaid();
            } else if (attempts >= maxAttempts) {
                console.log(`[StripePaymentService] Arrêt polling pour ${scanId} (délai dépassé).`);
                this.stopPaymentPolling(scanId);
            }
        }, 2500);

        this.activePollings[scanId] = interval;
    }

    public stopPaymentPolling(scanId: string): void {
        if (this.activePollings[scanId]) {
            clearInterval(this.activePollings[scanId]);
            delete this.activePollings[scanId];
        }
    }

    /**
     * Débloquer directement en mode test (développement)
     * Route: POST /api/payments/simulate-scan-payment
     */
    public async simulatePayment(scanId: string, token?: string): Promise<boolean> {
        try {
            const resolvedToken = await this.resolveToken(token);
            const headers: Record<string, string> = { 'Content-Type': 'application/json' };
            if (resolvedToken) headers['Authorization'] = `Bearer ${resolvedToken}`;

            console.log('[StripePaymentService] Simulation paiement pour scan:', scanId);
            const res = await fetch(`${CONFIG.BACKEND_URL}/api/payments/simulate-scan-payment`, {
                method: 'POST',
                headers,
                body: JSON.stringify({ scanId })
            });

            if (!res.ok) return false;
            const data = await res.json();
            return data.success === true || data.hasValidPayment === true;
        } catch (err) {
            console.error('[StripePaymentService] Erreur simulatePayment:', err);
            return false;
        }
    }

    /**
     * Ouvrir la page de paiement Stripe (nouvel onglet sur Web)
     */
    public async openCheckout(url: string): Promise<void> {
        if (!url) return;
        if (Platform.OS === 'web' && typeof window !== 'undefined') {
            // Ouvrir dans un nouvel onglet pour préserver l'état et le polling
            const win = window.open(url, '_blank');
            if (!win) {
                // Si popup bloqué, redirection normale
                window.location.href = url;
            }
        } else {
            const supported = await Linking.canOpenURL(url);
            if (supported) {
                await Linking.openURL(url);
            } else {
                console.error('[StripePaymentService] Impossible d\'ouvrir l\'URL:', url);
            }
        }
    }
}

export const stripePaymentService = StripePaymentService.getInstance();
export default stripePaymentService;
