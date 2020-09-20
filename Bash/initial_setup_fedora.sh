# Enable EPEL Repo
sudo dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

# Enable RPM Fusion Repo
sudo dnf install -y https://download1.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm

# Install VS Code Repo
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Update Packages
sudo dnf update -y
sudo dnf upgrade -y

# Install Packages
sudo dnf install -y \
git gnome-tweaks gparted \
neofetch \
VirtualBox vlc

# Install Nerd Fonts
git clone https://github.com/ryanoasis/nerd-fonts.git
sudo ./nerd-fonts/install.sh

# Customize terminal
curl -sS https://raw.githubusercontent.com/diogocavilha/fancy-git/master/install.sh | sh
source .bashrc
fancygit light

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo dnf install -y google-chrome-stable_current_x86_64.rpm
rm google-chrome-stable_current_x86_64.rpm

# Install Steam
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-steam.repo dnf -y install steam kernel-modules-extra