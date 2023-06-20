#!/bin/bash
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
wget -qO weby qrok.es/wy && sudo bash weby -clean
wget https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf -O /opt/webinoly/webinoly.conf
sudo stack -nginx
sudo stack -php
sudo stack -mysql
sudo stack -letsencrypt -purge
sudo stack -backups -purge
sudo stack -postfix -purge
sudo stack -redis -purge
sudo stack -memcached -purge
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
