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
NEGRO="\33[0;30m"

# path usuario
usuario="/home/pi"
usuario="$usuario"
						
						echo "\v\v\v\v\v"
						echo "${ROJO}"
						echo "   **************************************************************************"
						echo "   **************************************************************************"
						echo "${NEGRO}"
						echo "                  ACTUALIZANDO LISTADO DE SALAS YSF y FCS                    "
						echo "                                                                             "
						echo "${ROJO}"
						echo "   **************************************************************************"
						echo "   **************************************************************************"
						sleep 3
						
			            echo "${NEGRO}"						
						cd $usuario/YSFClients/YSFGateway
						sudo chmod 777 -R $usuario/YSFClients/YSFGateway
						sudo wget -O YSFHosts.txt http://register.ysfreflector.de/export_csv.php					
						wget -O FCSRooms.txt https://raw.githubusercontent.com/g4klx/YSFClients/master/YSFGateway/FCSRooms.txt 
						sleep 3
						clear
						echo "\v\v\v\v\v"
						echo "${ROJO}"
						echo "   **************************************************************************"
						echo "   **************************************************************************"
						echo "${NEGRO}"
						echo "             Los fichero YSFHost.txt y FCSRooms.txt se han actualizado       "
						echo "                                                                             "
						echo -n "${ROJO}"
						echo "   **************************************************************************"
						echo "   **************************************************************************"
						sleep 5
						exit;
						