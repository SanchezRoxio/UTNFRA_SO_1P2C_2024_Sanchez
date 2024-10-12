#!/bin/bash

#Se crea el archivo filtro_basico
touch $HOME/repogit/UTNFRA_SO_1P2C_2024_Sanchez/RTA_ARCHIVOS_Examen_20241012/Filtro_Basico.txt

echo "Se creo el archivo 'Filtro_Basico.txt'"

#Agregando información de la RAM al txt
cat /proc/meminfo | head -n 1 > $HOME/repogit/UTNFRA_SO_1P2C_2024_Sanchez/RTA_ARCHIVOS_Examen_20241012/Filtro_Basico.txt

echo "Se agrego la informacion de la memoria RAM en el archivo."

#Agregando información del fabricante del chásis al txt
sudo dmidecode -t chassis | head -n 7 | tail -n 2 >> $HOME/repogit/UTNFRA_SO_1P2C_2024_Sanchez/RTA_ARCHIVOS_Examen_20241012/Filtro_Basico.txt

echo "Se agrego la información del fabricante del CHASIS en el archivo."
