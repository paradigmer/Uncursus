#!/bin/bash
if [ "$EUID" -ne 0 ]; then
echo Please run this script as root.
else
echo -e "\e[31mWelcome to Uncursus Install Script V1.1 (Stable) By @Yaya4_4 Follow Me On Twitter Pls.\e[0m"
echo "WARNING : IM NOT RESPONSABLE IF ANYTHING GOES WRONG"
echo "If you found bug pls create an issues in github ;)"
echo "Enjoy :)"
echo "Starting..."
echo "Installing Dependency's For The Installer"
apt update
apt install unzip -y
apt install com.bingner.plutil -y
apt install zsh -y
apt install curl -y
wget https://getzbra.com/repo/pool/xyz.willy.zebra_1.1.28_iphoneos-arm.deb --directory-prefix=/User/Documents/Uncursus/
dpkg -i /User/Documents/Uncursus/xyz.willy.zebra_1.1.28_iphoneos-arm.deb 
wget https://raw.githubusercontent.com/paradigmer/Uncursus/new/procursus-migration.sh   --directory-prefix=/usr/bin/
rm -rf /User/Documents/Uncursus
mkdir /User/Documents/Uncursus

apt update
apt install wget -y --allow-unauthenticated
wget https://raw.githubusercontent.com/paradigmer/Uncursus/new/DebProcurusSystem.zip

unzip /User/Documents/Uncursus/DebProcurusSystem.zip -d /User/Documents/Uncursus/
dpkg -i --force-all /var/mobile/Documents/DebProcurusSystem/*.deb
echo "Done. Create Custom Directory For Download All Files Requied. Path (/User/Documents/)."
mkdir /User/Documents/Uncursus/u0
wget https://raw.githubusercontent.com/paradigmer/Uncursus/new/iphoneos-arm64.zip --directory-prefix=/User/Documents/Uncursus/
unzip /User/Documents/Uncursus/iphoneos-arm64.zip -d /User/Documents/Uncursus/

dpkg -i --force-all /User/Documents/Uncursus/iphoneos-arm64/*.deb

rm -rf /usr/bin/cynject

echo "Done. Installing necessary debs for patch."



echo "Done. Running Firmware Configuration (./firmware.sh)"
/usr/libexec/firmware
echo "BootStrap Installions Done. The Installer Clean The Installions"
rm -rf /User/Documents/Uncursus/
rm /etc/apt/sources.list.d/odyssey.sources
echo "All Done."
rm -rf /Aplications/Cydia.app
killall SpringBoard
fi
