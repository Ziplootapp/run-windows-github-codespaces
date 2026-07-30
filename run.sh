#!/bin/bash
echo "========================================================"
echo " ⚡ ZIPLOOT - STARTING WINDOWS 11 CLOUD VM IN DOCKER"
echo "========================================================"
docker compose down -v || true
mkdir -p ./win_data
docker compose up -d

echo ""
echo "========================================================"
echo " 🚀 WINDOWS 11 VM STARTED SUCCESSFULLY!"
echo "========================================================"
echo "📌 HOW TO ACCESS YOUR WINDOWS 11 DESKTOP:"
echo "1. Go to the 'PORTS' tab in VS Code at the bottom."
echo "2. Find Port 8006 (Windows 11 Web Desktop)."
echo "3. Click the Globe icon 🌐 or open Port 8006 link in your browser!"
echo ""
echo "⚠️ NOTE: Do NOT open Port 3389 in browser (Port 3389 is RDP binary protocol)."
echo "   Always open Port 8006 for Web Browser Desktop GUI!"
echo "========================================================"
