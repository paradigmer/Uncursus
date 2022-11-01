#!/bin/bash
mkdir -p /var/mobile/Documents/sileo
wget https://github.com/coolstar/Odyssey-bootstrap/raw/master/bootstrap_1700.tar.gz --directory-prefix=/var/mobile/Documents/sileo

cd /var/mobile/Documents/sileo
gzip bootstrap_1700.tar -d
mount -uw -o union /dev/disk0s1s1
rm -rf /etc/profile
rm -rf /etc/profile.d
rm -rf /etc/alternatives
rm -rf /etc/apt
rm -rf /etc/ssl
rm -rf /etc/ssh
rm -rf /etc/dpkg
rm -rf /Library/dpkg
rm -rf /var/cache
rm -rf /var/lib
tar --preserve-permissions -xkf bootstrap_1700.tar -C /
snappy -f / -r $(snappy -f / -l | sed -n 2p) -t orig-fs
./prep_bootstrap.sh
/usr/libexec/firmware
mkdir -p /etc/apt/sources.list.d/
echo "Types: deb" > /etc/apt/sources.list.d/odyssey.sources
echo "URIs: https://repo.theodyssey.dev/" >> /etc/apt/sources.list.d/odyssey.sources
echo "Suites: ./" >> /etc/apt/sources.list.d/odyssey.sources
echo "Components: " >> /etc/apt/sources.list.d/odyssey.sources
echo "" >> /etc/apt/sources.list.d/odyssey.sources
mkdir -p /etc/apt/preferences.d/
echo "Package: *" > /etc/apt/preferences.d/odyssey
echo "Pin: release n=odyssey-ios" >> /etc/apt/preferences.d/odyssey
echo "Pin-Priority: 1001" >> /etc/apt/preferences.d/odyssey
echo "" >> /etc/apt/preferences.d/odyssey
echo -n "" > /var/lib/dpkg/available
/Library/dpkg/info/profile.d.postinst
touch /.mount_rw
touch /.installed_odyssey
rm bootstrap*.tar*
apt-get update
apt install org.coolstar.sileo -y
uicache -p /Applications/Sileo.app
echo "We're finished here, have fun!"
