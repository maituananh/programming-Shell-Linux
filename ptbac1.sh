#!/bin/bash
echo -n "nhap a: "
read a
echo -n "nhap b: "
read b
if [ $a -ne 0 ]; then 
   x=$(echo "scale=2;(-$b / $a)"|bc)
   echo "nghiem la $x"
elif [ $b -ne 0 ]; then
   echo "pt vo nghiem"
else 
   echo "pt vo so nghiem"
fi

