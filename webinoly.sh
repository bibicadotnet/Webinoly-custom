#!/bin/bash
sudo apt install zip -y
sudo apt install unzip -y
sudo apt install htop -y
sudo apt install screen -y
timedatectl set-timezone Asia/Ho_Chi_Minh
wget -qO weby qrok.es/wy && sudo bash weby
sudo stack -php-ver=7.4
sudo stack -mysql-ver=10.3
sudo apt-get remove memcached -y
sudo apt-get remove redis-server -y
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
