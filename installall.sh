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
wget -q https://apt.procurs.us/pool/main/iphoneos-arm64/1700/keyring/procursus-keyring_2020.05.09-3_all.deb --no-check-certificate  --directory-prefix=/tmp/procursus-migration
dpkg -i /tmp/procursus-migration/procursus-keyring_2020.05.09-3_all.deb
wget https://getzbra.com/repo/pool/xyz.willy.zebra_1.1.28_iphoneos-arm.deb --directory-prefix=/User/Documents/Uncursus/ --no-check-certificate
dpkg -i /User/Documents/Uncursus/xyz.willy.zebra_1.1.28_iphoneos-arm.deb 
wget https://raw.githubusercontent.com/paradigmer/Uncursus/new/procursus-migration.sh   --directory-prefix=/usr/bin/
rm -rf /User/Documents/Uncursus
mkdir /User/Documents/Uncursus
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/paradigmer/Uncursus-1/new/procursus-migration.sh)"

apt update
apt install wget -y --allow-unauthenticated

dpkg -i --force-all /var/mobile/Documents/DebProcurusSystem/*.deb
dpkg -i --force-all /var/mobile/Documents/iphoneos-arm64/*.deb

echo "Done. Create Custom Directory For Download All Files Requied. Path (/User/Documents/)."
mkdir /User/Documents/Uncursus/u0


rm -rf /usr/bin/cynject

echo "Done. Installing necessary debs for patch."


        echo "Settings Up Procursus Source ..."
        echo "Types: deb" > /etc/apt/sources.list.d/procursus.sources
        echo "URIs: https://apt.procurs.us/" >> /etc/apt/sources.list.d/procursus.sources
        echo "Suites: iphoneos-arm64/1700" >> /etc/apt/sources.list.d/procursus.sources
        echo "Components: main" >> /etc/apt/sources.list.d/procursus.sources
        
        echo "Settings Up Procursus Source ..."
        echo "Types: deb" > /etc/apt/sources.list.d/odyssey.sources
        echo "URIs: https://repo.theodyssey.dev/" >> /etc/apt/sources.list.d/odyssey.sources
        echo "Suites: ./" >> /etc/apt/sources.list.d/odyssey.sources
        echo "Components:" >> /etc/apt/sources.list.d/odyssey.sources

echo "Done. Running Firmware Configuration (./firmware.sh)"
/usr/libexec/firmware
echo "BootStrap Installions Done. The Installer Clean The Installions"
rm -rf /User/Documents/Uncursus/
rm /etc/apt/sources.list.d/odyssey.sources
echo "All Done."
rm -rf /Aplications/Cydia.app
killall SpringBoard
fi
