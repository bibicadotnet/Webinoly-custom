#!/bin/bash
# cập nhập OS
sudo apt-get update -y
sudo apt-get upgrade -y
# cài đặt webinoly sạch
wget -qO weby qrok.es/wy && sudo bash weby -clean
# chép file config
sudo wget --no-check-certificate "https://raw.githubusercontent.com/bibicadotnet/Webinoly-custom/main/webinoly.conf" -O /opt/webinoly/webinoly.conf
# cài đặt php, mysql, nginx
sudo stack -lemp -build=light
# xóa mysql 10.6 mặc định
sudo stack -mysql -purge=force
# cài mysql 11.0
sudo stack -mysql-ver=11.0
# tắt firewall cho Oracle Ubuntun
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
# cài đặt zip. unzip, htop, screen
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
# kiểm tra lại thông tin webinoly
sudo webinoly -verify
sudo webinoly -info
