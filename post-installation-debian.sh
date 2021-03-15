cd ~
sudo add-apt-repository multiverse
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install xserver-xorg-video-ati
sudo apt-get install xserver-xorg-vieo-amdgpu
sudo apt install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
sudo add-apt-repository ppa:aslatter/ppa 
sudo apt install nitrogen awesome fonts-roboto rofi compton i3lock xclip qt5-style-plugins materia-gtk-theme lxappearance xbacklight flameshot nautilus xfce4-power-manager pnmixer network-manager-gnome policykit-1-gnome alacritty nautilus brave -y
wget -qO- https://git.io/papirus-icon-theme-install | sh
git clone --branch debian https://github.com/Raaydon/awesome-config ~/.config/awesome
mkdir -p ~/.config/rofi
cp $HOME/.config/awesome/theme/config.rasi ~/.config/rofi/config.rasi
sed -i '/@import/c\@import "'$HOME'/.config/awesome/theme/sidebar.rasi"' ~/.config/rofi/config.rasi
