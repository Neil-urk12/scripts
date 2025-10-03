flatpak install flathub md.obsidian.Obsidian
curl -f https://zed.dev/install.sh | sh
flatpak install flathub com.vscodium.codium
flatpak install flathub io.github.shiftey.Desktop
curl -fsS https://dl.brave.com/install.sh | sh
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/4/Debian_13/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:4.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:4/Debian_13/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_4.gpg > /dev/null
sudo apt update
sudo apt install fish

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

echo "zoxide init fish | source" >> ~/.config/fish/config.fish

source ~/.config/fish/config.fish
sudo apt install lazygit
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.onlyoffice.desktopeditors -y
flatpak install flathub com.usebruno.Bruno -y
