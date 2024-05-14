#!/bin/bash
clear
#Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"
                        cd /home/pi/Downloads
                        wget https://github.com/rustdesk/rustdesk/releases/download/1.2.3-2/rustdesk-1.2.3-2-aarch64.deb
                        sudo dpkg -i rustdesk-1.2.3-2-aarch64.deb
                        sudo apt -f install
                        clear
                        echo "\v\v\v\v\v\v"
                        echo "${VERDE}"
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        echo "                  SE HA INSTALADO RustDesk CON EXITO                    "
                        echo "***********************************************************************" 
                        echo "***********************************************************************"                      
                        sed -i "15c RustDesk=ON" /home/orangepi/info.ini
                        sudo rm /home/pi/Downloads/rustdesk-1.2.3-2-aarch64.deb             
                        sleep 3
                        