#!/bin/bash

echo "Updating the system"
sudo apt update && sudo apt upgrade -y

echo "Installing base tools"
sudo apt install -y curl wget git neofetch htop net-tools dnsutils nmap whois unzip vim

echo "Setting up a clean custom prompt"
cat << 'EOF' >> ~/.bashrc

# ==== Custom prompt ====
PS1="\[\e[1;34m\]\u@\h \[\e[1;32m\]\w \$ \[\e[0m\]"
EOF

echo "Enabling neofetch at shell startup..."
echo "neofetch" >> ~/.bashrc

echo "Post-installation complete. Reload with: source ~/.bashrc"
