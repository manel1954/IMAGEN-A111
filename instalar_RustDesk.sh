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
                        # Comprueba si Anydesk está instalado
                        estado_anydesk=$(awk "NR==12" /home/pi/info.ini)
                        if [ "$estado_anydesk" = 'ANYDESK=ON' ];then
                        echo "\v\v\v\v\v\v"
                        echo "${ROJO}"
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        echo "                        RustDesk YA ESTÁ INSTALADO                       "
                        echo "                      NO PUEDES VOLVER A INSTALARLO                    "
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        sleep 4
                        else
                        echo "\v\v\v\v\v\v"
                        echo "${VERDE}"
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        echo "                         INSTALANDO RustDesk                            "
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        sleep 2  

                        cd /home/pi/Downloads
                        sudo apt install ./rustdesk-1.2.3-aarch64.deb
                        clear
                        echo "\v\v\v\v\v\v"
                        echo "${VERDE}"
                        echo "***********************************************************************"
                        echo "***********************************************************************"
                        echo "                  SE HA INSTALADO RustDesk CON EXITO                    "
                        echo "***********************************************************************" 
                        echo "***********************************************************************"                      
                        sed -i "12c ANYDESK=ON" /home/pi/info.ini                        
                        sleep 3
                        fi