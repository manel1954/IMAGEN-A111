                
#!/bin/bash  
                        #Colores
ROJO="\033[1;31m"
VERDE="\033[1;32m"
BLANCO="\033[1;37m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
GRIS="\033[0m"
MARRON="\33[38;5;138m"
NEGRO="\e[30m"
                        clear
                        echo -n "${AMARILLO}"
                        cd /home/pi/IMAGEN-A111   
                        git pull                                                             
                        mv qt_* /home/pi/IMAGEN-A111/qt
                        chmod 777 -R /home/pi/IMAGEN-A111/qt

                        sudo rm qt_*
                       
                        cd /home/pi/IMAGEN-A111/qt/
                        ./qt_actualizando_imagen







