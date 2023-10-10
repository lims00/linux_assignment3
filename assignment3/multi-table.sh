#!/bin/sh
if [ $# -le 1 ];then
	echo "Invalid input"
	exit 0
fi

if [ $1 -le 0 ] || [ $2 -le 0 ];then

	echo "Input must be greater than 0"
	exit 0
else
	for i in $(seq 1 $1)
	do 
		for j in $(seq 1 $2)
		do
			printf "%d * %d = %d\t" $i $j `expr $i \* $j`
			
		done
		printf "\n"
	done	
fi
exit 0

