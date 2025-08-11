#!/bin/bash
set -euo pipefail

echo "Starting installation process..."
echo "=============================="

echo "Running essential applications installation..."
./essentials.sh

echo ""
echo "Running Flatpak applications installation..."
./flats.sh

echo ""
echo "All installations completed successfully!"
echo "You may want to reboot your system to ensure all changes take effect."
