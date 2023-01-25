#! /bin/bash
COMMAND=$1
ayuda(){
	echo metodo de ayuda
}
if [[ $# -lt 1 ]];
then
	echo "no se ha introducido comando"
else
	if [[ $COMMAND == "copy" ]]; 
	then
		SOURCE=$2
		DESTINATION=$3
		copy -r $SOURCE $DESTINATION
	elif [[ $COMMAND == "move" ]]; 
	then
		SOURCE=$2
		DESTINATION=$3
		move -i $SOURCE $DESTINATION	
	elif [[ $COMMAND == "head" ]]; 
	then
		FILE=$2
		LINES=$3
		head -n$LINES $FILE
	elif [[ $COMMAND == "tail" ]]; 
	then
		FILE=$2
		LINES=$3
		tail -$LINES $FILE
	elif [[ $COMMAND == "count" ]]; 
	then
		FILE=$2
		LINES=$3
		grep -$TEXT $SOURCE wc -w 		
	fi
fi
