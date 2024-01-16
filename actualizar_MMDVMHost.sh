

#!/bin/bash
                    #Copia el MMDVMHost Actual en .local
                    cd /home/pi
                    sudo rm -R /home/pi/.local/MMDVMHost
                    sudo cp -R MMDVMHost /home/pi/.local/ 
                    sudo chmod 777 -R /home/pi/.local/MMDVMHost
                    # ------------------------------------------------
                    
                    #Actualiza el MMDVMHost
                    sudo rm -r /home/pi/MMDVMHost
                    sudo apt-get install build-essential git-core libi2c-dev i2c-tools lm-sensors
                    git clone https://github.com/g4klx/MMDVMHost
                                 
                    cd /home/pi/MMDVMHost

                    HOY=$(date +%Y%m%d)
                    FIJA="const char* VERSION = "\"
                    PI="SYSTEM"\"
                    HOY1=$HOY$PI
                    PUNTO=";"   
                    
                    sed -i "22c $FIJA$HOY1$PUNTO" /home/pi/MMDVMHost/Version.h

                    make
                    sudo make install           
                    
                    #Cambia estos parametros en el MMDVM.ini
                    sed -i "5c Duplex=0" /home/pi/MMDVMHost/MMDVM.ini
                    sed -i "52c # UARTSpeed=460800" /home/pi/MMDVMHost/MMDVM.ini
                    sed -i "229c Type=Direct" /home/pi/MMDVMHost/MMDVM.ini
                    sed -i "231c # LocalPort=62032" /home/pi/MMDVMHost/MMDVM.ini
                    sed -i "234c Password=PASSWORD" /home/pi/MMDVMHost/MMDVM.ini

                    # Crea los ejecutables para estas aplicaciones 
                    cd /home/pi/MMDVMHost
                    cp MMDVMHost MMDVMBM
                    cp MMDVMHost MMDVMPLUS
                    cp MMDVMHost MMDVMDSTAR
                    cp MMDVMHost MMDVMFUSION
                    cp MMDVMHost DMR2NXDN
                    cp MMDVMHost DMR2YSF
                    cp MMDVMHost MMDVMDMR2M17
                    cp MMDVMHost MMDVMNXDN
                    cp MMDVMHost MMDVMESPECIAL
                    cp MMDVMHost MMDVMDMRGATEWAY                                     
                    
                    # Hace que el fichero TODOS_LOS_INIS sea igual al de MMDVM.ini para que luego 
                    # el Editor General lo utilice
                    cp MMDVM.ini TODOS_LOS_INIS.ini

                    # Crea los ficheros .ini y Memorias ==================
                    cp MMDVM.ini MMDVM.ini_original
                    cp MMDVM.ini MMDVM.ini_copia
                    cp MMDVM.ini MMDVM.ini_copia2
                    cp MMDVM.ini MMDVM.ini_copia3

                    cp MMDVM.ini MMDVMBM.ini
                    cp MMDVM.ini MMDVMBM.ini_copia
                    cp MMDVM.ini MMDVMBM.ini_copia2
                    cp MMDVM.ini MMDVMBM.ini_copia3

                    cp MMDVM.ini MMDVMPLUS.ini
                    cp MMDVM.ini MMDVMPLUS.ini_copia
                    cp MMDVM.ini MMDVMPLUS.ini_copia2
                    cp MMDVM.ini MMDVMPLUS.ini_copia3

                    cp MMDVM.ini MMDVMDSTAR.ini
                    cp MMDVM.ini MMDVMDSTAR.ini_copia
                    cp MMDVM.ini MMDVMDSTAR.ini_copia2
                    cp MMDVM.ini MMDVMDSTAR.ini_copia3

                    cp MMDVM.ini MMDVMFUSION.ini
                    cp MMDVM.ini MMDVMFUSION.ini_copia
                    cp MMDVM.ini MMDVMFUSION.ini_copia2
                    cp MMDVM.ini MMDVMFUSION.ini_copia3  

                    cp MMDVM.ini MMDVMESPECIAL.ini
                    cp MMDVM.ini MMDVMESPECIAL.ini_copia
                    cp MMDVM.ini MMDVMESPECIAL.ini_copia2
                    cp MMDVM.ini MMDVMESPECIAL.ini_copia3                

                    cp MMDVM.ini MMDVMNXDN.ini
                    cp MMDVM.ini MMDVMDMR2YSF.ini                    
                    cp MMDVM.ini MMDVMDMR2NXDN.ini                  
                    cp MMDVM.ini MMDVMDMRGateway.ini 
                    
                    # Hace cambios en los ficheros siguientes para el buen funcionamiento de ellos
                    sed -i "52c # UARTSpeed=460800" /home/pi/MMDVMHost/MMDVMDMRGateway.ini
                    sed -i "229c Type=Gateway" /home/pi/MMDVMHost/MMDVMDMRGateway.ini
                    sed -i "231c LocalPort=62032" /home/pi/MMDVMHost/MMDVMDMRGateway.ini
                    
                    sed -i "52c # UARTSpeed=460800" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini
                    sed -i "231c LocalPort=62032" /home/pi/MMDVMHost/MMDVMDMR2YSF.ini
                    sed -i "231c LocalPort=62032" /home/pi/MMDVMHost/MMDVMDMR2NXDN.ini
                    # -----------------------------------------------------------------------------

                    sudo chmod 777 -R /home/pi/MMDVMHost
                
                    exit;
