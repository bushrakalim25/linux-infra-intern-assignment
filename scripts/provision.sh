#!/bin/bash
# Provisioning Script - Bushra Assignment

# FR1 - Detect OS
echo "Detecting OS..."
cat /etc/os-release

# Update packages safely
echo "Updating packages..."
sudo apt update && sudo apt upgrade -y

# Install required packages (nginx + firewall)
echo "Installing nginx and ufw..."
sudo apt install nginx ufw -y

# Set hostname and timezone
echo "Setting hostname and timezone..."
sudo hostnamectl set-hostname infra-vm
sudo timedatectl set-timezone Asia/Kolkata

# Create non-root sudo user
echo "Creating user 'internuser'..."
if id "internuser" &>/dev/null; then
    echo "User already exists, skipping..."
else
    sudo adduser --disabled-password --gecos "" internuser
    sudo usermod -aG sudo internuser
fi

# Enable firewall rules
echo "Configuring firewall..."
sudo ufw allow 22
sudo ufw allow 80
sudo ufw --force enable

echo "Provisioning complete!"
