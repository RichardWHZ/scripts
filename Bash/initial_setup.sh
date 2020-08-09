#!/bin/bash

# Customize terminal
curl -sS https://raw.githubusercontent.com/diogocavilha/fancy-git/master/install.sh | sh
fancygit light

# Installs all required software

# Update packages
sudo apt update
sudo apt upgrade -y
flatpak update -y

# Install APT packages
sudo apt install -y \
atom \
barrier \
calibre \
fcitx fcitx-googlepinyin \
gdebi git gnome-tweaks gparted \
intel-microcode \
libreoffice \
minder \
neofetch \
steam synaptic \
timeshift tlp tlp-rdw \
ubuntu-restricted-extras \
variety virtualbox vlc

# Change fcitx UI
sudo apt remove fcitx-ui-classic -y
sudo apt install fcitx-ui-qimpanel -y

# Install Appimagelauncher
sudo add-apt-repository ppa:appimagelauncher-team/stable -y
sudo apt install appimagelauncher -y

# Install Lutris
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt install lutris -y

# Install tlp UI
sudo add-apt-repository ppa:linuxuprising/apps -y
sudo apt install tlpui -y

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
rm google-chrome-stable_current_amd64.deb

# Install Bashtop
echo "deb http://packages.azlux.fr/debian/ buster main" | sudo tee /etc/apt/sources.list.d/azlux.list
wget -qO - https://azlux.fr/repo.gpg.key | sudo apt-key add -
sudo apt update
sudo apt install bashtop -y

# Install Nerd Fonts
git clone https://github.com/ryanoasis/nerd-fonts.git
./nerd-fonts/install.sh

# Downlaod Ventoy USB tool
git clone https://github.com/ventoy/Ventoy.git

# Install Whatdesk Whatsapp Client
wget https://zerkc.gitlab.io/whatsdesk/whatsdesk_0.3.3_amd64.deb
sudo apt install ./whatsdesk_0.3.3_amd64.deb -y

# Set up xpadneo 
git clone https://github.com/atar-axis/xpadneo.git
sudo apt install dkms linux-headers-`uname -r`
sudo ./xpadneo/install.sh

# Install Anaconda
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
sudo chmod +x Anaconda3-2020.02-Linux-x86_64.sh
./Anaconda3-2020.02-Linux-x86_64.sh

# Configure Anaconda 
conda config --set changeps1 False

# Start tlp
sudo tlp start

# Install Flatpaks
flatpak install -y \
com.getpostman.Postman \
com.github.alainm23.planner	\
com.github.gijsgoudzwaard.image-optimizer \
com.spotify.Client \
com.valvesoftware.Steam.Utility.MangoHud \
io.dbeaver.DBeaverCommunity	\
nl.hjdskes.gcolor3 

# Reboot
sudo reboot
