#!/bin/bash

sudo dnf update -y && sudo dnf upgrade --refresh

echo "Installing zsh"
sudo dnf install zsh -y

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing neovim"
sudo dnf install neovim -y

echo "Installing lazygit"
sudo dnf copr enable dejan/lazygit
sudo dnf install lazygit -y

echo "Installing podman"
sudo dnf install podman -y

echo "Installing zoxide"
sudo dnf install zoxide -y

echo "Installing zellij"

sudo dnf copr enable varlad/zellij
sudo dnf install zellij -y

echo "Installing zed"
curl -f https://zed.dev/install.sh | sh


