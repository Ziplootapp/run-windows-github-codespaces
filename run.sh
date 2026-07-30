#!/bin/bash
echo "========================================================"
echo " ⚡ ZIPLOOT - OPTIMIZING DISK & STARTING WINDOWS 11"
echo "========================================================"
docker compose down -v || true
docker system prune -af --volumes || true
mkdir -p ./win_data
docker compose up -d

echo ""
echo "========================================================"
echo " 🚀 WINDOWS 11 COMPACT VM STARTED SUCCESSFULLY!"
echo "========================================================"
echo "📌 ACCESS METHOD 1 (Web Browser Desktop - Port 8006):"
echo "   Go to PORTS tab in VS Code and open Port 8006 in browser!"
echo ""
echo "📌 ACCESS METHOD 2 (Direct RDP / mstsc.exe via TCP Tunnel):"

if [ ! -f ./bore ]; then
  curl -sSL https://github.com/ekzhang/bore/releases/download/v0.5.0/bore-v0.5.0-x86_64-unknown-linux-musl.tar.gz | tar -xz
fi

echo "Starting RDP Tunnel for mstsc.exe..."
./bore local 3389 --to bore.pub &
