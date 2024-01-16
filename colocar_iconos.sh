#!/bin/bash
#Colores
#ROJO="\033[1;31m"
#VERDE="\033[1;32m"
#BLANCO="\033[1;37m"
#AMARILLO="\033[1;33m"
#CIAN="\033[1;36m"
#GRIS="\033[0m"
#MARRON="\33[38;5;138m"
#NEGRO="\33[0;30m"
#clear
#echo -n "${AMARILLO}"
#echo "***********************************************************"
#echo "         ESPERAR A QUE SE REORGANICEN LOS ICONOS          "
#echo "***********************************************************"
#cd /home/pi/Desktop
#sudo rm *.desktop
## recupera los iconos que se han borrado y se han convertido en icono de un libro 
## pero no quita los semaforos que se queden encendidos por error al reiniciar
#cp /home/pi/IMAGEN-A111/Desktop/*.desktop /home/pi/Desktop
#sudo chmod 777 -R /home/pi/Desktop
#
#sudo cp /home/pi/icons.screen0-1904x1017.rc /home/pi/.config/xfce4/desktop
#sudo chmod 777 -R /home/pi/.config/xfce4/desktop
#xfdesktop --reload
#
#cd /home/pi/IMAGEN-A111/qt/
#./qt_colocar_iconos        
        usuario="/home/pi"
        SCRIPTS_version=$(awk "NR==3" /home/pi/version-fecha-actualizacion)
        cd $usuario/$SCRIPTS_version/Desktop
        cp *.desktop $usuario/Desktop
        sudo chmod 777 -R $usuario/Desktop