#!/bin/bash

mode=`grep -n -m 1 "^UARTPort=" /home/pi/MMDVMHost/MMDVMNXDN.ini`
buscar=":"
caracteres=`expr index $mode $buscar`
caracteres_linea=`expr $caracteres - 1`
numero_linea_port=`expr substr $mode 1 $caracteres_linea`
mode=$(awk "NR==$numero_linea_port" /home/pi/MMDVMHost/MMDVMNXDN.ini)
puerto=`expr substr $mode 15 14`
puerto="  "$puerto
cd /home/pi/Desktop
sudo cp RXF_NXDN.desktop /home/pi
frecuencia=$(awk "NR==13" /home/pi/MMDVMHost/MMDVMNXDN.ini)
frecuencia=`expr substr $frecuencia 13 9`
frecuencia=$frecuencia$puerto
sed -i "11c Name=$frecuencia" /home/pi/RXF_NXDN.desktop

sudo cp /home/pi/RXF_NXDN.desktop /home/pi/Desktop

sudo rm /home/pi/RXF_NXDN.desktop

#Escribe en el fichero INFO_NXDN para poner los datos en los iconos INFO TXF  
sed -i "17c $frecuencia" /home/pi/INFO_RXF

SCRIPTS_version=$(awk "NR==3" /home/pi/version-fecha-actualizacion) 
cd /home/pi/Desktop
sudo cp Abrir_NXDN.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;sudo sh cerrar_NXDN.sh'" /home/pi/Abrir_NXDN.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICO_NXDN_ON.png" /home/pi/Abrir_NXDN.desktop
#sed -i "10c Name[es_ES]=Cerrar NXDN" /home/pi/Abrir_NXDN.desktop
sed -i "17c NXDN=ON" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_NXDN.desktop /home/pi/Desktop

sudo rm /home/pi/Abrir_NXDN.desktop


cd /home/pi/MMDVMHost
#/home/pi/IMAGEN-A111/./qt_info_nxdn & sudo lxterminal --geometry=80x12 -e ./MMDVMNXDN MMDVMNXDN.ini &
xterm -geometry 85X12+1215+296 -bg blue -fg white -fa ‘verdana’ -fs 9x -T CONSOLA_MMDVMNXDN -e ./MMDVMNXDN MMDVMNXDN.ini &


cd /home/pi/NXDNClients/NXDNGateway
xterm -geometry 85X12+612+296 -bg blue -fg white -fa ‘verdana’ -fs 9x -T CONSOLA_NXDNGateway -e sudo ./NXDNGateway NXDNGateway.ini


cd /home/pi/Desktop
sudo cp Abrir_NXDN.desktop /home/pi
sed -i "4c Exec=sh -c 'cd /home/pi/$SCRIPTS_version;sudo sh ejecutar_NXDN.sh'" /home/pi/Abrir_NXDN.desktop
sed -i "5c Icon=/home/pi/$SCRIPTS_version/ICO_NXDN_OFF.png" /home/pi/Abrir_NXDN.desktop
#sed -i "10c Name[es_ES]=Abrir NXDN" /home/pi/Abrir_NXDN.desktop
sed -i "17c NXDN=OFF" /home/pi/status.ini
cd /home/pi
sudo cp Abrir_NXDN.desktop /home/pi/Desktop

sudo rm /home/pi/Abrir_NXDN.desktop

