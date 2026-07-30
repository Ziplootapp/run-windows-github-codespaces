#!/bin/bash
echo "========================================================"
echo " ⚡ ZIPLOOT - STARTING WINDOWS 11 CLOUD VM IN DOCKER"
echo "========================================================"
docker-compose down -v || true
mkdir -p ./win_data
docker-compose up -d
echo ""
echo "[SUCCESS]: Windows 11 Container Started!"
echo "Connecting to Windows 11 Web Desktop on Port 8006..."
