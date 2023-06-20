#!/bin/bash
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
wget -qO weby qrok.es/wy && sudo bash weby -clean
wget https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf -O /opt/webinoly/webinoly.conf
sudo stack -nginx
sudo stack -php-ver=8.2
sudo stack -mysql
sudo stack -letsencrypt -purge -y
sudo stack -backups -purge -y
sudo stack -postfix -purge -y
sudo stack -redis -purge -y
sudo stack -memcached -purge -y
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
sudo webinoly -info
sudo webinoly -verify
