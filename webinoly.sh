#!/bin/bash
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
sudo wget https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf -O /opt/webinoly/webinoly.conf && wget -qO weby qrok.es/wy && sudo bash weby && sudo apt remove iptables-persistent -y && sudo ufw disable && sudo iptables -F
