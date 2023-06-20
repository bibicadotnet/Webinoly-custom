#!/bin/bash
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
wget -qO weby qrok.es/wy && sudo bash weby -clean
wget https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf -O /opt/webinoly/webinoly.conf
sudo stack -nginx=mainline
sudo stack -php-ver=7.4
sudo stack -mysql
sudo apt-get remove memcached -y
sudo apt-get remove redis-server -y
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
