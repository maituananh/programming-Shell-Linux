#!/bin/bash
echo -n "nhap a:"
read a
echo -n "nhap b:"
read b
echo -n "nhap c:"
read c
if [ $a -eq 0 ] ; then
	if [ $b -eq 0 ] ; then
		if [ $c -eq 0 ] ; then
			echo "phương trình vô số nghiệm "
		else
			echo "phương trình vô nghiệm "
		fi
	else
		echo -n "phương trình có 1 nghiệm duy nhất"
		x=$(echo "scale=2; -$c / $b" | bc )
		echo $x
	fi
else
	denta=$(echo "$b * $b - 4 * $a * $c" | bc)
	#denta=`expr $b \* $b -4 \* $a \* $c`
	if [ $denta -lt 0 ] ; then
		echo " phương trình vô nghiệm"
	elif [ $denta -eq 0 ] ; then
		echo -n " phương trình có một nghiệm kép x="
		x=$(echo "scale=2; $b / (2 * $a)" | bc)
		echo "$x"
	else
		echo "phương trình có 2 nghiệm phân biệt "
		x1=$(echo "scale=2; -($b + sqrt($denta))/(2*$a)" | bc)
		echo "x1= $x1"
		x2=$(echo "scale=2; -($b - sqrt($denta))/(2*$a)" | bc)
		echo "x2= $x2"
	fi
fi
exit 0

