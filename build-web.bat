@echo off
echo 🚀 [G5 BUILD] Exportation Web pour BPA...
echo 📂 Dossier cible : d:\bQoD\web-build

:: Entrée dans le dossier mobile
cd mobile

echo 📦 Verification des dependances (pnpm)...
call pnpm install

echo 🛠️ Generation du bundle Web (Expo Export)...
:: On utilise --clear pour être sûr de repartir à neuf
npx -y expo export --platform web --output-dir ../../../web-build --clear

echo.
echo ✅ [MISSION ECHO] Exportation terminee avec succes.
echo 📸 Les fichiers sont dans d:\bQoD\web-build.
echo.
pause
