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
echo "Downloading And Executing Offical Procurus Script From Coolstar"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Yaya48/Uncursus/new/procursus-migration.sh)"
echo "Downloading And Installing Offical Procurus Deb"

apt update
apt install wget -y --allow-unauthenticated
wget https://github.com/paradigmer/Uncursus/blob/new/DebProcurusSystem.zip --directory-prefix=/var/mobile/Documents/
unzip /var/mobile/Documents/DebProcurusSystem.zip -d /var/mobile/Documents/
dpkg -i /User/Documents/Uncursus/DebProcurusSystem/*.deb
echo "Done. Create Custom Directory For Download All Files Requied. Path (/User/Documents/)."
mkdir /User/Documents/Uncursus/u0
wget https://github.com/paradigmer/Uncursus/blob/new/iphoneos-arm64.zip --directory-prefix=/var/mobile/Documents/
unzip /var/mobile/Documents/iphoneos-arm64.zip -d /var/mobile/Documents/
rm -rf /usr/bin/cynject
echo "Done. Installing necessary debs for patch."

dpkg -i --force-all /var/mobile/Documents/iphoneos-arm64/coreutils-bin.deb
dpkg -i --force-all /var/mobile/Documents/Diphoneos-arm64/libssl.deb
dpkg -i --force-all /var/mobile/Documents/iphoneos-arm64/lzma.deb
dpkg -i --force-all /var/mobile/Documents/iphoneos-arm64/xz.deb
dpkg -i --force-all /var/mobile/Documents/iphoneos-arm64/libidn2.deb
dpkg -i --force-all /var/mobile/Documents/iphoneos-arm64/ncurses5-libs.deb
echo "Done. Running Firmware Configuration (./firmware.sh)"
/usr/libexec/firmware
echo "BootStrap Installions Done. The Installer Clean The Installions"

rm /etc/apt/sources.list.d/odyssey.sources
echo "All Done."

killall SpringBoard
fi
