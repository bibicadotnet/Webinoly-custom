#!/bin/bash
sudo wget -qO weby qrok.es/wy && sudo bash weby -clean && wget https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf -O /opt/webinoly/webinoly.conf && sudo stack -lemp && sudo apt remove iptables-persistent -y && sudo ufw disable && sudo iptables -F
