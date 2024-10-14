#!/bin/bash
# Creamos los grupos secundarios
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
echo "Grupos secundarios creados."

#Asignamos a la variable la contraseña del hash de mi usuario.
usuario=$(whoami)
password=$(sudo cat /etc/shadow | grep $usuario | awk -F ':' '{print $2}')

#Creando los usuarios
sudo useradd -d /Examenes-UTN/alumno_1 -s /bin/bash -c "Primer alumno" -p $password -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -d /Examenes-UTN/alumno_2 -s /bin/bash -c "Segundo alumno" -p $password -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -d /Examenes-UTN/alumno_3 -s /bin/bash -c "Tercer alumno" -p $password -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -d /Examenes-UTN/profesores -s /bin/bash -c "Primer profesor" -p $password -G p1c2_2024_gProfesores p1c2_2024_P1

echo "Usuarios creados exitosamente."

#Cambiando los dueños de los directorios
sudo chown -R p1c2_2024_A1 /Examenes-UTN/alumno_1/
sudo chown -R p1c2_2024_A2 /Examenes-UTN/alumno_2/
sudo chown -R p1c2_2024_A3 /Examenes-UTN/alumno_3/
sudo chown -R p1c2_2024_P1 /Examenes-UTN/profesores/
echo "Se le asigno un directorio a cada uno correctamente."

#Creamos el archivo 'validar.txt' para cada usuario

sudo -u p1c2_2024_A1 bash -c "whoami > /Examenes-UTN/alumno_1/validar.txt"
sudo -u p1c2_2024_A2 bash -c "whoami > /Examenes-UTN/alumno_2/validar.txt"
sudo -u p1c2_2024_A3 bash -c "whoami > /Examenes-UTN/alumno_3/validar.txt"
sudo -u p1c2_2024_P1 bash -c "whoami > /Examenes-UTN/profesores/validar.txt"

echo "Se crearon los archivos Validar.txt"

#Cambiamos los permisos como nos dice la consigna
sudo chmod 750 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chmod 775 /Examenes-UTN/profesores
echo "Permisos otorgados!"
