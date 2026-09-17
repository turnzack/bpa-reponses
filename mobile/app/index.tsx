import React, { useState, useEffect } from 'react';
import { View, Text, StyleSheet, TouchableOpacity, ActivityIndicator, Platform } from 'react-native';
import { ShieldCheck, ArrowRight } from 'lucide-react-native';
import { useRouter } from 'expo-router';
import { LocalAiService } from '../src/services/ai-local.service';
import { useAuth } from '@/contexts/AuthContext';

export default function BpaEntry() {
  const router = useRouter();
  const { session } = useAuth();
  const [status, setStatus] = useState('Prêt pour analyse.');
  const [loading, setLoading] = useState(false);

  // Détection du retour de paiement Stripe -> redirection automatique immédiate vers le chat /(tabs)
  useEffect(() => {
    if (Platform.OS === 'web' && typeof window !== 'undefined') {
      const search = window.location.search;
      if (search && (search.includes('payment-success') || search.includes('scanId'))) {
        console.log('[BpaEntry] Redirection retour Stripe vers /(tabs)...', search);
        router.replace('/(tabs)' + search);
      }
    }
  }, []);

  const activateIA = async () => {
    setLoading(true);
    const ok = await LocalAiService.getInstance().loadGemma();
    if (ok) {
        const res = await LocalAiService.getInstance().quickAnalyze("Analyse du projet BPA en cours.");
        setStatus(res);
    } else {
        setStatus("ERREUR : Exécutez le script TRANSFERT_IA.ps1 d'abord.");
    }
    setLoading(false);
  };

  return (
    <View style={styles.container}>
      <ShieldCheck size={90} color="#2563eb" />
      <Text style={styles.title}>BPA OMNI-SYSTÈME</Text>
      
      <View style={styles.card}>
        <Text style={styles.label}>Statut de l'IA Souveraine (Gemma) :</Text>
        <Text style={styles.status}>{status}</Text>
        
        <TouchableOpacity style={styles.btn} onPress={activateIA}>
          {loading ? <ActivityIndicator color="white" /> : <Text style={styles.btnText}>TESTER L'IA GEMMA</Text>}
        </TouchableOpacity>

        <TouchableOpacity 
          style={styles.btnPrimary} 
          onPress={() => router.replace('/(tabs)')}
        >
          <Text style={styles.btnPrimaryText}>ACCÉDER AU SCAN DE DEVIS TCE</Text>
          <ArrowRight size={20} color="white" style={{ marginLeft: 8 }} />
        </TouchableOpacity>
      </View>
      
      <Text style={styles.footer}>💎 POWERED BY BQOD FORGE G5 · NEON POSTGRESQL NATIVE</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: '#0d1117', alignItems: 'center', justifyContent: 'center', padding: 20 },
  title: { fontSize: 28, fontWeight: '900', color: '#f1f5f9', marginBottom: 30, textAlign: 'center' },
  card: { backgroundColor: '#161b22', padding: 25, borderRadius: 20, width: '100%', maxWidth: 450, alignItems: 'center', borderWidth: 1, borderColor: '#30363d' },
  label: { fontSize: 13, color: '#94a3b8', fontWeight: '700', marginBottom: 8 },
  status: { fontSize: 14, color: '#60a5fa', fontWeight: '700', textAlign: 'center', marginBottom: 25, lineHeight: 20 },
  btn: { backgroundColor: '#21262d', paddingVertical: 12, paddingHorizontal: 25, borderRadius: 12, flexDirection: 'row', alignItems: 'center', marginBottom: 12, borderWidth: 1, borderColor: '#30363d' },
  btnText: { color: '#e2e8f0', fontWeight: '700', fontSize: 13, letterSpacing: 0.5 },
  btnPrimary: { backgroundColor: '#2563eb', paddingVertical: 14, paddingHorizontal: 25, borderRadius: 12, flexDirection: 'row', alignItems: 'center', justifyContent: 'center', width: '100%', marginTop: 6 },
  btnPrimaryText: { color: 'white', fontWeight: '800', fontSize: 14, letterSpacing: 0.5 },
  footer: { position: 'absolute', bottom: 25, fontSize: 10, fontWeight: '700', color: '#64748b' }
});
