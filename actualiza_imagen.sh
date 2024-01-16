                
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
                        cd /home/pi/BOOKWORM   
                        git pull                                                             
                        mv qt_* /home/pi/BOOKWORM/qt
                        chmod 777 -R /home/pi/BOOKWORM/qt
                       
                        cd /home/pi/BOOKWORM/qt/
                        ./qt_actualizando_imagen







