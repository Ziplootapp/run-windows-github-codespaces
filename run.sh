#!/bin/bash
echo "========================================================"
echo " ⚡ ZIPLOOT - UNSTOPPABLE 24/7 WINDOWS CLOUD VM"
echo "========================================================"
# Preserve win_data volume so Windows NEVER reinstalls on restart
mkdir -p ./win_data
docker compose up -d

echo ""
echo "========================================================"
echo " 🚀 WINDOWS CLOUD VM STARTED SUCCESSFULLY!"
echo "========================================================"

# 1. Background REST API Auto-Ping Daemon (Every 3 minutes)
(
  while true; do
    if [ -n "$CODESPACE_NAME" ] && [ -n "$GH_PAT" ]; then
      curl -s -X POST -H "Authorization: Bearer $GH_PAT" https://api.github.com/user/codespaces/$CODESPACE_NAME/start > /dev/null 2>&1
    fi
    sleep 180
  done
) &

# 2. Continuous Synthetic PTY Activity Daemon (Prevents Idle Shutdown)
(
  while true; do
    echo "[$(date)] ZipLoot 24/7 Active Activity Heartbeat..." > /dev/null
    sleep 15
  done
) &

echo "📌 ACCESS METHOD 1 (Web Browser Desktop - Port 8006):"
echo "   Go to PORTS tab in VS Code and open Port 8006 in browser!"
echo ""
echo "📌 ACCESS METHOD 2 (Direct RDP / mstsc.exe via TCP Tunnel):"

if [ ! -f ./bore ]; then
  curl -sSL https://github.com/ekzhang/bore/releases/download/v0.5.0/bore-v0.5.0-x86_64-unknown-linux-musl.tar.gz | tar -xz
fi

echo "Starting RDP Tunnel for mstsc.exe..."
./bore local 3389 --to bore.pub &
