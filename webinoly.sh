#!/bin/bash
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
sudo wget -qO weby qrok.es/wy && sudo bash weby -clean
sudo wget --no-check-certificate "https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf" -O /opt/webinoly/webinoly.conf
sudo stack -nginx=mainline -build=light
sudo stack -mysql
sudo stack -php -build=light
sudo apt remove iptables-persistent -y
sudo ufw disable && sudo iptables -F
sudo webinoly -info
sudo webinoly -verify
