#!/bin/bash
#Colores 
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"

SCRIPTS_version=$(awk "NR==3" /home/pi/version-fecha-actualizacion)
cd /home/pi/Desktop
sudo cp Abrir_svxlink.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;sudo sh cerrar_svxlink.sh'" /home/pi/Abrir_svxlink.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICO_SVXLINK_ON.png" /home/pi/Abrir_svxlink.desktop
sed -i "10c Name[es_ES]=ON/OFF" /home/pi/Abrir_svxlink.desktop
sed -i "8c SVXLINK=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_svxlink.desktop /home/pi/Desktop

sudo rm /home/pi/Abrir_svxlink.desktop

echo "${BLANCO}"
echo " ************************************************"
echo "               ABRIENDO SVXLINK                  "
echo " ************************************************"
sleep 2


xterm -geometry 85x13+1215+626 -bg black -fg white -fa ‘verdana’ -fs 9x -T CONSOLA_SVXLINK -e svxlink


cd /home/pi/Desktop
sudo cp Abrir_svxlink.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;sh ejecutar_svxlink.sh'" /home/pi/Abrir_svxlink.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICO_SVXLINK_OFF.png" /home/pi/Abrir_svxlink.desktop
sed -i "10c Name[es_ES]=ON/OFF" /home/pi/Abrir_svxlink.desktop
sed -i "8c SVXLINK=OFF" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_svxlink.desktop /home/pi/Desktop

sudo rm /home/pi/Abrir_svxlink.desktop