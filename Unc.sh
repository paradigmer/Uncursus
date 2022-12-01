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
/bin/bash -c "$(curl -fsSL -k https://raw.githubusercontent.com/paradigmer/Uncursus/new/procursus-migration.sh)"
echo "Downloading And Installing Offical Procurus Deb"

apt update
apt install wget -y --allow-unauthenticated
dpkg -i /var/mobile/Documents/DebProcurusSystem/*.deb
echo "Done. Create Custom Directory For Download All Files Requied. Path (/User/Documents/)."

rm -rf /usr/bin/cynject
echo "Done. Installing necessary debs for patch."

dpkg -i --force-all /var/mobile/Documents/iphoneos-arm64/*.deb
echo "Done. Running Firmware Configuration (./firmware.sh)"
/usr/libexec/firmware
echo "BootStrap Installions Done. The Installer Clean The Installions"
wget -q https://repo.chimera.sh/debs/cydia_2.3_iphoneos-arm.deb -d /var/mobile/Documents/DebProcurusSystem/
wget -q https://github.com/SailyTeam/Saily/releases/download/CI-1654050540/chromatic.rel.ci.1654050540.deb -d /var/mobile/Documents/DebProcurusSystem/
dpkg -i --force-all  /var/mobile/Documents/DebProcurusSystem/cydia_2.3_iphoneos-arm.deb

dpkg -i --force-all  /var/mobile/Documents/DebProcurusSystem/chromatic.rel.ci.1654050540.deb

killall SpringBoard
fi
