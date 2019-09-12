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
for ((i=0 ;i<n-1;i++)); do
	for ((j=$i+1;j<n;j++)); do
		if [ ${a[$i]} -ge ${a[$i]} ]; then
			tam=${a[$i]};
			a[$i]=${a[$j]};
			a[$j]=$tam;
		fi
	done
done
echo "giá trị của mảng sau khi sắp xếp là: "
echo ${a[@]}
