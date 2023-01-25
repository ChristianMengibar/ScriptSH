#! /bin/bash

# Creamos el directorio alumnos dentro de home, como root, con el comando sudo.
sudo mkdir /home/alumnos

#Creamos con el como root, con el comando sudo, un grupo de usuarios llamado 'alumnos'. 
sudo groupadd alumnos

#Cambiamos como root, con el comando sudo, el grupo propietario de /home/alumnos a 'alumnos'. 
sudo chgrp -R /home/alumnos alumnos

#Cambiamos los permisos para que los tengan el propietario y el grupo propietario y los demás no tengan permisos.
sudo chmod 770 /home/alumnos

#Se va a crear  un usuario cuyo grupo principal sea 'alumnos' por cada fila en el fichero alumnos.txt.
ALUMNOS=$( cat alumnos.txt )

for ALUMNO in  $ALUMNOS
do
	sudo useradd $ALUMNO
done


