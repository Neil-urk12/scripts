#!/bin/bash

echo "Installing golang"
sudo dnf install golang -y
echo "Golang installed"

echo "Installing bun"
curl -fsSL https://bun.sh/install | bash
echo "Bun installed"

echo "Installing HomeBrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "HomeBrew installed"

echo "Installing FNM (Fast Node Manager)"
curl -o- https://fnm.vercel.app/install | bash
echo "FNM Installed"

# Download and install Node.js:
echo "Installing Node 24 via FNM"
fnm install 24

# Verify the Node.js version:
node -v # Should print "v24.12.0".

# Verify npm version:
npm -v # Should print "11.6.2".
echo "Node and NPM installed"

echo "Installing pnpm"
curl -fsSL https://get.pnpm.io/install.sh | sh -
echo "Pnpm installed"

echo "Installing rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "Rust Installed"

echo "Installing dotnet-sdk-10"
sudo dnf install dotnet-sdk-10.0
echo "Dotnet-sdk-10 installed"

echo "Installing dotnet 9 sdk"
sudo dnf install dotnet-sdk-9.0
echo "Dotnet 9 sdk installed"
