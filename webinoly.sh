#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
wget -qO weby qrok.es/wy && sudo bash weby -clean
rm /opt/webinoly/webinoly.conf
sudo wget --no-check-certificate "https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf" -O /opt/webinoly/webinoly.conf
sudo stack -lemp



wget -qO weby qrok.es/wy && sudo bash weby -clean
sudo stack -lemp -build=light
sudo stack -php-ver=8.2
sudo stack -mysql-ver=10.11
sudo stack -nginx=mainline
sudo stack -nginx=mainline -build=light
sudo stack -mysql-ver=10.11
sudo stack -mysql
sudo stack -php-ver=8.2
sudo stack -php



mkdir -p /opt/webinoly

sudo stack -php-ver=8.2 -build=light
sudo stack -lemp -build=light
sudo stack -mysql
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
sudo webinoly -verify
sudo webinoly -info


sudo apt update -y && sudo apt upgrade -y
