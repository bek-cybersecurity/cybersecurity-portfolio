#!/usr/bin/env bash

set -u

echo "=================================="
echo "       LINUX SECURITY CHECK"
echo "=================================="
echo

echo "[1] Operating System"
grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2-
echo

echo "[2] Current User"
whoami
echo

echo "[3] Disk Usage"
df -h /
echo

echo "[4] Firewall Status"
if command -v ufw >/dev/null 2>&1; then
    sudo ufw status
else
    echo "UFW is not installed."
fi
echo

echo "[5] Listening Network Ports"
ss -tuln
echo

echo "[6] Available Package Updates"
apt list --upgradable 2>/dev/null | tail -n +2
echo

echo "=================================="
echo "       CHECK COMPLETED"
echo "=================================="
