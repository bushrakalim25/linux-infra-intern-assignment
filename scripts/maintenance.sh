#!/bin/bash
# Maintenance Script - Bushra Assignment

echo "=== Running Maintenance Tasks ==="

# Restart nginx safely
echo "Restarting nginx..."
sudo systemctl restart nginx

# Clean old logs
echo "Cleaning old logs..."
sudo journalctl --vacuum-time=1d

echo "=== Maintenance Complete ==="
