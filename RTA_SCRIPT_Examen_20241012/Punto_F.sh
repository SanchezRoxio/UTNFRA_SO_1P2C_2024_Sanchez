
ARCHIVO="../RTA_ARCHIVOS_Examen_20241012/Filtro_Avanzado.txt"

touch $ARCHIVO
echo "Mi IP Publica es: $(curl -s ifconfig.me)" > $ARCHIVO

USUARIO=$(whoami) 
echo "Mi usuario es: $USUARIO" >> $ARCHIVO

HASH=$(sudo cat /etc/shadow | grep $USUARIO | awk -F ':' '{print $2}')
echo "El Hash de mi usuario es: $HASH" >> $ARCHIVO

REPOS=$(git remote get-url origin)
echo "La URL de mi repositorio es: $REPOS" >> $ARCHIVO

cat $ARCHIVO
