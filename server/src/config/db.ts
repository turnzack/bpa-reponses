import { neon } from '@neondatabase/serverless';
import dotenv from 'dotenv';
dotenv.config();

const dbUrl = process.env.DATABASE_URL;
export const sql = dbUrl ? neon(dbUrl) : (() => {
  throw new Error('DATABASE_URL is not configured');
}) as any;

export async function initDb() {
  if (!dbUrl) {
    console.warn('[DB] DATABASE_URL non configuré : Neon indisponible.');
    return;
  }
  try {
    await sql`
      CREATE TABLE IF NOT EXISTS users (
        id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
        email VARCHAR(255) UNIQUE NOT NULL,
        password_hash VARCHAR(255) NOT NULL,
        role VARCHAR(50) DEFAULT 'user',
        is_super_admin BOOLEAN DEFAULT false,
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
      );
    `;
    await sql`
      CREATE TABLE IF NOT EXISTS scan_payments (
        id BIGSERIAL PRIMARY KEY,
        scan_id TEXT NOT NULL,
        user_id TEXT NOT NULL,
        user_email TEXT,
        stripe_payment_id TEXT,
        stripe_session_id TEXT,
        amount NUMERIC(10,2) DEFAULT 1.99,
        currency TEXT DEFAULT 'eur',
        status TEXT DEFAULT 'pending',
        paid_at TIMESTAMPTZ,
        created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
      );
    `;
    await sql`ALTER TABLE scan_payments ADD COLUMN IF NOT EXISTS stripe_session_id TEXT;`.catch(() => {});
    console.log('[DB] Tables Neon initialisées.');
  } catch (err: any) {
    console.error('[DB] Erreur:', err.message);
  }
}
