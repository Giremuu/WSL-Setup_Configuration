# ========================== ========================== ==========================
# WSL 2 Installation Script with Ubuntu (default) and Debian
# ========================== ========================== ==========================

# Update WSL
wsl --update

# Set WSL 2 as the default version
wsl --set-default-version 2

# Install Ubuntu
wsl --install -d Ubuntu

# Install Debian
wsl --install -d Debian
