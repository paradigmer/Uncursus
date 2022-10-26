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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/paradigmer/Uncursus/new/procursus-deploy-u0.sh)"
echo "Downloading And Installing Offical Procurus Deb"
rm -rf /tmp/Uncursus
mkdir /tmp/Uncursus
apt update
apt install wget -y --allow-unauthenticated
wget https://raw.githubusercontent.com/paradigmer/Uncursus/new/DebProcurusSystem.zip?raw=true --directory-prefix=/tmp/Uncursus/
unzip /tmp/DebProcurusSystem.zip?raw=true -d /tmp/Uncursus/
dpkg -i /tm/Uncursus/DebProcurusSystem/*.deb
echo "Done. Create Custom Directory For Download All Files Requied. Path (/User/Documents/)."
mkdir /tmp/u0
wget https://raw.githubusercontent.com/paradigmer/Uncursus/new/DebPatch.zip?raw=true --directory-prefix=/tmp/Uncursus/
unzip /tmp/Uncursus/DebPatch.zip?raw\=true -d /tmp/Uncursus/DebPatch
rm -rf /usr/bin/cynject
wget https://apt.bingner.com/debs/1443.00/com.ex.substitute_0.1.14_iphoneos-arm.deb --directory-prefix=/tmp/u0
wget https://apt.bingner.com/debs/1443.00/com.saurik.substrate.safemode_0.9.6003_iphoneos-arm.deb --directory-prefix=/tmp/Uncursus/u0
echo "Done. Installing necessary debs for patch."
dpkg -i --force-all /tmp/Uncursus/DebPatch/us.diatr.sileorespring_1.1_iphoneos-arm.deb
dpkg -i --force-all /tmp/Uncursus/DebPatch/coreutils-bin.deb
dpkg -i --force-all /tmp/Uncursus/DebPatch/libssl.deb
dpkg -i --force-all /tmp/Uncursus/DebPatch/lzma.deb
dpkg -i --force-all /tmp/Uncursus/DebPatch/ncurses5-libs.deb
dpkg -i --force-all /tmp/Uncursus/DebPatch/xz.deb
dpkg -i --force-all /tmp/Uncursus/u0/*.deb
echo "Done. Running Firmware Configuration (./firmware.sh)"
/usr/libexec/firmware
echo "BootStrap Installions Done. The Installer Clean The Installions"
rm -rf /User/Documents/Uncursus/
rm /etc/apt/sources.list.d/odyssey.sources
echo "All Done."
rm -rf /Aplications/Cydia.app
killall SpringBoard
fi
