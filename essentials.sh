#!/bin/bash
set -euo pipefail

echo "Installing podman"
sudo dnf -y install podman
sudo dnf -y install zoxide
echo "Installing LazyGit..."
sudo dnf copr enable dejan/lazygit
sudo dnf install lazygit -y

echo "Setting up VSCodium repository..."
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h\n" | sudo tee -a /etc/yum.repos.d/vscodium.repo

echo "Installing VSCodium..."
sudo dnf install codium -y

echo "Installing Brave browser..."
curl -fsS https://dl.brave.com/install.sh | sh

echo "Downloading ProtonVPN package..."
wget "https://repo.protonvpn.com/fedora-$(cat /etc/fedora-release | cut -d' ' -f 3)-stable/protonvpn-stable-release/protonvpn-stable-release-1.0.3-1.noarch.rpm"

echo "Installing ProtonVPN..."
sudo dnf install ./protonvpn-stable-release-1.0.3-1.noarch.rpm && sudo dnf check-update --refresh 
sudo dnf install proton-vpn-gnome-desktop -y
sudo dnf install neovim -y
sudo dnf install sqlitebrowser -y

echo "Setting up LazyVim configuration..."
if [ ! -d "~/.config/nvim" ]; then
    git clone https://github.com/LazyVim/starter ~/.config/nvim
    rm -rf ~/.config/nvim/.git
else
    echo "Neovim config directory already exists, skipping..."
fi

echo "Installing zellij"

sudo dnf copr enable varlad/zellij 
sudo dnf install zellij -y

echo "Essential applications installation completed!"
