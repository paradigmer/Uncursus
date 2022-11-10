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
rm -rf /User/Documents/Uncursus
mkdir /User/Documents/Uncursus
apt update
apt install wget -y --allow-unauthenticated
wget https://github.com/paradigmer/Uncursus/blob/new/DebProcurusSystem.zip?raw=true --directory-prefix=/User/Documents/Uncursus/
unzip /User/Documents/Uncursus/DebProcurusSystem.zip?raw=true -d /User/Documents/Uncursus/
dpkg -i /User/Documents/Uncursus/DebProcurusSystem/*.deb
echo "Done. Create Custom Directory For Download All Files Requied. Path (/User/Documents/)."
mkdir /User/Documents/Uncursus/u0
wget https://github.com/paradigmer/Uncursus/blob/new/iphoneos-arm64.zip?raw=true --directory-prefix=/User/Documents/Uncursus/
unzip /User/Documents/Uncursus/iphoneos-arm64.zip?raw\=true -d /User/Documents/Uncursus/DebPatch
rm -rf /usr/bin/cynject
wget https://apt.bingner.com/debs/1443.00/com.ex.substitute_0.1.14_iphoneos-arm.deb --directory-prefix=/User/Documents/Uncursus/u0
wget https://apt.bingner.com/debs/1443.00/com.saurik.substrate.safemode_0.9.6003_iphoneos-arm.deb --directory-prefix=/User/Documents/Uncursus/u0
echo "Done. Installing necessary debs for patch."
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/sileorespringfix.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/coreutils-bin.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/libssl1.0_1_2_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/lzma_5_4_iphoneos-arm.deb.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/ncurses5-libs_1_2_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/essential-dummy.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/xz_2_2_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/ncurses-meta.deb
dpkg -i --force-all /User/Documents/Uncursus/DebPatch/libidn2.deb
dpkg -i --force-all /User/Documents/Uncursus/u0/*.deb
echo "Done. Running Firmware Configuration (./firmware.sh)"
/usr/libexec/firmware
echo "BootStrap Installions Done. The Installer Clean The Installions"
rm -rf /User/Documents/Uncursus/
rm /etc/apt/sources.list.d/odyssey.sources
echo "All Done."
rm -rf /Aplications/Cydia.app
killall SpringBoard
fi
