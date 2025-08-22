#!/bin/bash
# ====================================
#  Pterodactyl Installer Script
#  Author: PerruzziLifestyle-Cell
# ====================================

echo "⚡ Starting Pterodactyl installation..."

sudo apt update && sudo apt upgrade -y
sudo apt install -y curl docker.io docker-compose

curl -o docker-compose.yml https://raw.githubusercontent.com/perruzzilifestyle-cell/pterodactyl-installer/main/docker-compose.yml

sudo docker-compose up -d

echo "✅ Installation complete! Access your panel through your server's IP address."
