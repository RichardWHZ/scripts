# Update Packages
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# Update xpadneo
cd ~/xpadneo
git pull
sudo ./update.sh

# Update Ventoy
cd ~/Ventoy
git pull 
cd ~
