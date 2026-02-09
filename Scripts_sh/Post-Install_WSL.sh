#!/usr/bin/env bash
set -euo pipefail      # Stop if variable not okay

PACKAGES=(curl wget git neofetch htop net-tools dnsutils nmap whois unzip vim)      # Tools that I often use
ENABLE_NEOFETCH=1

echo "Updating the system"
sudo apt update
sudo apt upgrade -y

echo "Installing base tools"
sudo apt install -y "${PACKAGES[@]}"

BASHRC="${HOME}/.bashrc"
MARKER_BEGIN="# ==== WSL-POSTINSTALL BEGIN ===="
MARKER_END="# ==== WSL-POSTINSTALL END ===="

echo "Configuring shell..."
if ! grep -qF "$MARKER_BEGIN" "$BASHRC"; then
  cat >> "$BASHRC" <<'EOF'

# ==== WSL-POSTINSTALL BEGIN ====
# Clean custom prompt
PS1="\[\e[1;34m\]\u@\h \[\e[1;32m\]\w \$ \[\e[0m\]"

# Run neofetch at startup (can be disabled by removing the line below)
command -v neofetch >/dev/null 2>&1 && neofetch
# ==== WSL-POSTINSTALL END ====
EOF
else
  echo "Shell block already present in ~/.bashrc (skipping)."
fi

echo "Post-installation complete. Reload with: source ~/.bashrc"
