#!/bin/bash
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
wget -qO weby qrok.es/wy && sudo bash weby -clean -build=light
wget https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf -O /opt/webinoly/webinoly.conf
sudo stack -nginx -build=light
sudo stack -php-ver=8.2 -build=light
sudo stack -mysql
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
sudo webinoly -info
sudo webinoly -verify
