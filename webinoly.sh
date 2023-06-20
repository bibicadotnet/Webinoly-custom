#!/bin/bash
wget -qO weby qrok.es/wy && sudo bash weby -clean
rm /opt/webinoly/webinoly.conf
sudo wget --no-check-certificate "https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf" -O /opt/webinoly/webinoly.conf
chmod 111 /opt/webinoly/webinoly.conf
sudo stack -lemp -build=light
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
sudo webinoly -info
sudo webinoly -verify
