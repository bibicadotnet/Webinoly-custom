#!/bin/bash
# chay quyen root
sudo -i
# cai dat ban clean
wget -qO weby qrok.es/wy && sudo bash weby -clean
# chep file cau hinh
wget https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf -O /opt/webinoly/webinoly.conf
# Install Nginx and LEMP
sudo stack -lemp
echo "<<< ГОТОВО >>>"
