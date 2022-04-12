#!/usr/bin/bash

RED="$(printf '\033[31m')"  
GREEN="$(printf '\033[32m')"  
ORANGE="$(printf '\033[33m')"  
BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  
CYAN="$(printf '\033[36m')"  
WHITE="$(printf '\033[37m')" 
BLACK="$(printf '\033[30m')"

clear
read -p $' \e[0m\e[1;92m Insira seu nome de usuário : \e[0m\e[1;96m\en' usuario
echo ""
echo ""
echo -e $g "${GREEN}irei instalar as dependências${GREEN}"
apt update 
apt upgrade -y 
pkg install python
pkg install python2
pip install pyfiglet
pip install termcolor
pkg install figlet -y
pkg install ncurses-utils -y 
pkg install ruby -y 
gem install lolcat 
git clone https://github.com/Meliodas-d3m0n/termux
sed 's+YOURNAME+'$usuario'+g' termux/bash.bashrc > /data/data/com.termux/files/usr/etc/bash.bashrc
sed 's+YOURNAME+'$usuario'+g' termux/welcome.py > /data/data/com.termux/files/usr/etc/welcome.py
rm -rf termux
rm -rf ../usr/etc/motd
sleep 1
clear
echo -e "${GREEN}feche o termux e abra novamente..."
