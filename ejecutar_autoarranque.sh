#!/bin/bash
SCRIPTS_version=$(awk "NR==3" /home/pi/version-fecha-actualizacion)
cd /home/pi/Desktop
sudo cp Abrir_autoarranques.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;sudo sh cerrar_autoarranque.sh'" /home/pi/Abrir_autoarranques.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICO_AUTOARRANQUE_ON.png" /home/pi/Abrir_autoarranques.desktop
sudo sed -i "10c Name[es_ES]=AUTO ARRANQUE" /home/pi/Abrir_autoarranques.desktop
#sed -i "12c SOLOFUSION=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_autoarranques.desktop /home/pi/Desktop
sudo chmod 777 /home/pi/Desktop/Abrir_autoarranques.desktop
sudo rm /home/pi/Abrir_autoarranques.desktop

cd /home/pi/IMAGEN-A111/qt
 ./qt_autoarranque




