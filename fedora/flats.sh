#!/bin/bash
set -euo pipefail

echo "Adding Flathub repository..."
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "Installing Flatpak applications..."
flatpak install flathub io.github.josephmawa.Bella -y
flatpak install flathub me.iepure.devtoolbox -y
flatpak install flathub it.fabiodistasio.AntaresSQL -y
flatpak install flathub io.podman_desktop.PodmanDesktop -y
flatpak install flathub com.cburch.Logisim -y
flatpak install flathub net.nokyan.Resources -y
flatpak install flathub org.vinegarhq.Sober -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.onlyoffice.desktopeditors -y
flatpak install flathub org.qbittorrent.qBittorrent -y
flatpak install flathub org.kde.isoimagewriter -y
flatpak install flathub org.kde.dolphin -y
flatpak install flathub be.alexandervanhee.gradia -y
flatpak install flathub io.github.jonmagon.kdiskmark -y
flatpak install flathub net.codelogistics.webapps -y
flatpak install flathub com.usebruno.Bruno -y
flatpak install flathub io.github.zingytomato.netpeek -y
flatpak install flathub ro.go.hmlendea.DL-Desktop -y
flatpak install flathub net.devolutions.RDM -y

echo "Flatpak applications installation completed!"
