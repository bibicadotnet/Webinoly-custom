#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
wget -qO weby qrok.es/wy && sudo bash weby -clean
sudo wget --no-check-certificate "https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf" -O /opt/webinoly/webinoly.conf
sudo stack -lemp -build=light
sudo stack -mysql -purge=force
sudo stack -mysql-ver=11.0



sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
sudo webinoly -verify
sudo webinoly -info
