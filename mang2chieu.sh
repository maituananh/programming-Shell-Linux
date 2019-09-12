#!/bin/bash
declare -A matrix
let "num_row = 2"
let "num_columns = 2"

for ((i=1; i<=num_row; i++)) do
	for((j=1; j<=num_columns; j++)) do
		echo -n " nhap phan tu thu [ $i ; $j] ="
		read number
		let "matrix[$i,$j] = $number"
	done
done
for((i=1; i<=num_row; i++)) do
		echo " "
	for((j=1; j<=num_columns; j++)) do
		echo -n " ${matrix[$i,$j]} "
	done
done
echo " "
echo " phan tu max la : "
let "max=0"
for((i=1; i<=num_row; i++)) do
    for((j=1; J<=num_columns; j++)) do
	if [ ${matrix[$i,$j]} -gt $max ]; then
		let "max = ${matrix[$i,$j]}"
	fi
    done
done
echo $max
