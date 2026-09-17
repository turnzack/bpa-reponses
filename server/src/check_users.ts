import { neon } from '@neondatabase/serverless';
import bcrypt from 'bcrypt';

const dbUrl = "postgresql://neondb_owner:npg_iXDMLpI7C2Py@ep-solitary-tree-b2h7z8qh-pooler.c-6.eu-central-1.aws.neon.tech/neondb?sslmode=require";
const sql = neon(dbUrl);

async function checkUser() {
  try {
    const users = await sql`SELECT id, email, role, created_at FROM users`;
    console.log("Users in Neon DB:", users);

    const email = "patrice.adja@gmail.com";
    const existing = await sql`SELECT id, email, password_hash FROM users WHERE email = ${email}`;
    console.log("Existing user patrice.adja@gmail.com:", existing);
  } catch (e) {
    console.error("Error:", e);
  }
}

checkUser();
