#!/bin/bash

# Script to automate basic Ubuntu server setup

echo " Starting server setup..."

# Update and upgrade packages
echo " Updating system packages..."
sudo apt-get update -y && sudo apt-get upgrade -y

# Install essential packages
echo " Installing essential tools (git, curl, ufw)..."
sudo apt-get install -y git curl ufw

# Set up firewall rules
echo " Setting up UFW firewall..."
sudo ufw allow OpenSSH
sudo ufw --force enable

# Install Node.js (LTS)
echo " Installing Node.js..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install PM2 globally
echo " Installing PM2..."
sudo npm install -g pm2

# Clone a sample Node.js app 
# echo " Cloning Node.js app..."
# git clone https://github.com/ketanupadhyayy/your-node-app.git

echo "Server setup completed successfully!"
