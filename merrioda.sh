#!/usr/bin/bash



RED="$(printf '\033[31m')"  
GREEN="$(printf '\033[32m')"  
ORANGE="$(printf '\033[33m')"  
BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  
CYAN="$(printf '\033[36m')"  
WHITE="$(printf '\033[37m')" 
BLACK="$(printf '\033[30m')"

read -p $' \e[0m\e[1;92m Insira seu nome de usuário : \e[0m\e[1;96m\en' usuario
echo ""
echo ""
echo -e "${GREEN}irei instalar as dependências${GREEN}"
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
sed 's+YOURNAME+'$usuario'+g' /data/data/com.termux/files/home/termux-lindo/bash.bashrc > /data/data/com.termux/files/usr/etc/bash.bashrc
sed '+sYOURNAME+'$usuario'+g' /data/data/com.termux/files/home/termux-lindo/welcome.py > /data/data/com.termux/files/usr/etc/welcome.py
bash