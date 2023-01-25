#! /bin/bash
Ayuda (){
	echo " "

	echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

	echo "List: muestra los archivos que hay disponibles en la carpeta que estamos"
	
	echo "Create: sirve para crear un archivo en la carpeta en la que estemos y se escribe el texto del tercer argumento "
	
	echo "Remove: elimina los archivos que queramos eliminar"

	echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
}

if [[ $# -lt 1 ]] 
then 
	echo "ERROR tiene que haber un argumento"
else 
	COMMAND=$1
	if [[ $COMMAND == "list" ]]
	then 
		ls -lah
	elif [[ $COMMAND == "remove" ]]	
	then
		if [[ $# -ne 2 ]] 
		then
			echo "ERROR el comando remove necesitados argumentos"
		fi
		FILE=$2
		rm -rf $FILE
	elif [[ $COMMAND == "create" ]] 
	then
		if [[ $# -ne 3 ]]
		then	
			echo "ERROR el comando create necesita 3 parametros"
		fi
		FILE=$2
		FILE_CONTENT=$3
		touch $FILE 
		echo $FILE_CONTENT >> $FILE
	elif [[ $COMMAND == "--help" ]]
	then 
		Ayuda
	else 
	       echo "El comando no es valido"
       fi
fi       


