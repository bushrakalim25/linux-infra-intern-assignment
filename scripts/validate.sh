#!/bin/bash
# Validation Script - Bushra Assignment

echo "=== Validating Nginx Service ==="
# Check if nginx service is running
systemctl is-active --quiet nginx && echo "Nginx is running ✅" || echo "Nginx is NOT running ❌"

echo "=== Validating Firewall ==="
# Check if firewall is active
sudo ufw status | grep -q "Status: active" && echo "Firewall is active ✅" || echo "Firewall is NOT active ❌"

echo "=== Validating User ==="
# Check if internuser exists
id internuser &>/dev/null && echo "User internuser exists ✅" || echo "User internuser does NOT exist ❌"

echo "=== Validation Complete ==="
