#!/bin/bash
## Bash Script to install automatically Fire Fox Developer EDITION
## By a.torres
## see <https://github.com/atorresbr>

#função usada para enviar mensagem caso o usuário nao esteja usando o comando sudo
#this functio send the error mesage to user if his not use the sudo command

if [ "$(whoami)" != "root" ]
then
echo
  echo -e " 🔴 use sudo para usar este script\n 🔴 use sudo berfore run this script"
echo
  exit 1
fi

echo
echo

on_green='\033[42m'
green='\033[0;32m'
red='\033[0;31m'
nc='\033[0m' # No Color

# executando comandos

# Excluindo arquivos do firefox DEv da pasta opt
echo  -e " 🐧 Excluindo arquivos legados do FIREFOX DEv no diretorio opt"
echo
sleep 1
echo  -e " 🔴 ${green} sudo rm -Rf /opt/firefox-developer* " ${nc} 
echo

sleep 1



 echo -ne ${on_green}' #####                   (33%)\r'
sleep 1
 echo -ne '#############           (66%)\r'
sleep 1
 echo -ne '####################### (100%)\r ' ${nc}
 echo -ne ' \n'
 
sleep 2

echo
echo -e " Êxito !"
echo

sleep 2
sudo rm -Rf /opt/firefox-developer* && \

echo

#fim

# Exclui os arquivos do firefov DEv da pasta bin
echo " 🐧 Excluindo arquivos legados do FIREFOX DEv no diretório bin "
echo
sleep 1
echo  -e " 🔴 ${RED}sudo rm -Rf /usr/bin/firefox-developer "
echo

sleep 1

 echo -ne ' #####                   (33%)\r'
sleep 1
 echo -ne ' #############           (66%)\r'
sleep 1
 echo -ne ' ####################### (100%)\r '
 echo -ne ' \n'${NC}

sleep 2

echo
echo -e " Êxito !"
echo

sleep 2
sudo rm -Rf /usr/bin/firefox-developer && \

echo

#fim 

# Exclui o icone do Firefox DEv da seção de snaps
echo " 🐧 Excluindo icone de atalho do firefox-dev na seção de Snaps "
echo
sleep 1
echo  -e " 🔴 ${RED}sudo rm -Rf /usr/share/applications/firefox-developer.desktop "
echo

sleep 1

 echo -ne ' #####                   (33%)\r'
sleep 1
 echo -ne ' #############           (66%)\r'
sleep 1
 echo -ne ' ####################### (100%)\r '
 echo -ne ' \n'${NC}

sleep 2

echo
echo -e " Êxito !"
echo

sleep 2
sudo rm -Rf /usr/share/applications/firefox-developer.desktop && \

echo
#fim

# Exclui o diretório antigo com arquivos de uma instalação anterior
echo " 🐧 excluindo diretório antigo com arquivos de uma instalação anterior"
echo

 
sleep 2
sudo rm -Rf ffde* && \

echo
#fim


# criando uma outra pasta com o atual Firefox DEv
echo " 🐧 criando diretório para receber o donwload do Firefox DEv"
echo

 
sleep 2
mkdir ffde && cd ffde && \

echo
#fim

# fazendo o Donload
echo " 🐧 Fazendo o download do Firefox DEv"
echo


sleep 2
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O ffde.bz2 && \

echo
#fim

# Extraindo os arquivos
echo " 🐧 Extraindo os arquivos do encapsulamento"
echo

 
sleep 2
sudo tar -jxvf  ffde.bz2 -C /opt/ && \

echo
#fim

# renomeando a pasta dos arquivos de firefox para firefox-dev
echo " 🐧 renomeando o diretório dos arquivos de firefox para firefox-dev"
echo


sleep 2
sudo mv /opt/firefox*/ /opt/firefox-developer && \

echo
#fim

# Criando atalho do firefox-dev no diretório do usuário  
echo " 🐧 Criando atalho do firefox-dev no diretório do usuário "
echo

sleep 2
sudo ln -sf /opt/firefox-developer/firefox /usr/bin/firefox-developer && \

echo
#fim

# Criando novo icone de atalho do firefox-dev na seção de Snaps (( snApps )) 
echo " 🐧 Criando novo icone de atalho do firefox-dev na seção de Snaps"
echo

sleep 2
 echo -e '[Desktop Entry]\n Version=yy.y.y\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop && \

echo
#fim

# printando a mensagem de agradecimento no terminal
sleep 2

echo -e " 🐧 obrigado por usar este script. Compartilhe !\n 🐧 thanks for use this script. Share ! " 

echo


#while true; do
#    read -p "Do you wish to install this program? " yn
#    case $yn in
#        [Yy]* ) make install; break;;
#        [Nn]* ) exit;;
#        * ) echo "Please answer yes or no.";;
#    esac
#done

###################################
#       choose you collor         #
###################################

# Reset / no collor 
#Color_Off='\033[0m'       # Text Reset

# Regular Colors
#Black='\033[0;30m'        # Black
#Red='\033[0;31m'          # Red
#Green='\033[0;32m'        # Green
#Yellow='\033[0;33m'       # Yellow
#Blue='\033[0;34m'         # Blue
#Purple='\033[0;35m'       # Purple
#Cyan='\033[0;36m'         # Cyan
#White='\033[0;37m'        # White

# Bold
#BBlack='\033[1;30m'       # Black
#BRed='\033[1;31m'         # Red
#BGreen='\033[1;32m'       # Green
#BYellow='\033[1;33m'      # Yellow
#BBlue='\033[1;34m'        # Blue
#BPurple='\033[1;35m'      # Purple
#BCyan='\033[1;36m'        # Cyan
#BWhite='\033[1;37m'       # White

# Underline
#UBlack='\033[4;30m'       # Black
#URed='\033[4;31m'         # Red
#UGreen='\033[4;32m'       # Green
#UYellow='\033[4;33m'      # Yellow
#UBlue='\033[4;34m'        # Blue
#UPurple='\033[4;35m'      # Purple
#UCyan='\033[4;36m'        # Cyan
#UWhite='\033[4;37m'       # White

# Background
#On_Black='\033[40m'       # Black
#On_Red='\033[41m'         # Red
#On_Green='\033[42m'       # Green
#On_Yellow='\033[43m'      # Yellow
#On_Blue='\033[44m'        # Blue
#On_Purple='\033[45m'      # Purple
#On_Cyan='\033[46m'        # Cyan
#On_White='\033[47m'       # White

# High Intensity
#IBlack='\033[0;90m'       # Black
#IRed='\033[0;91m'         # Red
#IGreen='\033[0;92m'       # Green
#IYellow='\033[0;93m'      # Yellow
#IBlue='\033[0;94m'        # Blue
#IPurple='\033[0;95m'      # Purple
#ICyan='\033[0;96m'        # Cyan
#IWhite='\033[0;97m'       # White

# Bold High Intensity
#BIBlack='\033[1;90m'      # Black
#BIRed='\033[1;91m'        # Red
#BIGreen='\033[1;92m'      # Green
#BIYellow='\033[1;93m'     # Yellow
#BIBlue='\