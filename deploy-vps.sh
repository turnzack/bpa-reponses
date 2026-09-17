#!/usr/bin/env bash
set -e

echo "=========================================================="
echo "  🚀 DÉPLOIEMENT SERVEUR BPA SOUVERAIN (VPS)"
echo "  📍 Serveur : Contabo VPS (109.205.182.17)"
echo "=========================================================="

TARGET_DIR="/var/www/bpa-reponses"

if [ ! -d "$TARGET_DIR/.git" ]; then
    echo "[*] Clonage du dépôt Git turnzack/bpa-reponses..."
    git clone https://github.com/turnzack/bpa-reponses.git "$TARGET_DIR"
else
    echo "[*] Mise à jour du dépôt Git..."
    cd "$TARGET_DIR"
    git fetch --all
    git reset --hard origin/main
fi

cd "$TARGET_DIR/server"
echo "[*] Installation des dépendances du serveur..."
npm install || npm install

echo "[*] Démarrage du serveur sous PM2..."
pm2 stop bpa-server 2>/dev/null || true
pm2 delete bpa-server 2>/dev/null || true
PORT=4000 pm2 start npm --name "bpa-server" -- run dev
pm2 save
pm2 startup systemd -u root --hp /root 2>/dev/null || true

echo "=========================================================="
echo "  ✅ DÉPLOIEMENT SERVEUR TERMINÉ !"
echo "  🔌 Test API : curl http://127.0.0.1:5006/api/health"
echo "=========================================================="
