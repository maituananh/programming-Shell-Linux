#!/bin/bash
declare -a a
echo -n "nhập vào số phần tử của mảng: "
read n
for ((i=1; i<=n ;i++)); do
echo -n "a[$i] = "
read m
a[$i]=$m;
done
echo "giá trị của mảng là: "
echo ${a[@]}
#tìm snt lớn nhất trong mảng
sntmax=0
for ((i=1 ;i<=n;i++)); do
j=2
while [ $j -le $((${a[$i]}-1)) ] && [ $((${a[$i]}%$j)) -ne 0 ]; do
j=$(($j+1))
done
if [ $j -eq ${a[$i]} ]; then
	if [ "${a[$i]}" -gt "$sntmax" ]; then
			sntmax=${a[$i]}
	fi
fi
done
echo "số nguyên tố lớn nhất trong mảng là: $sntmax"
