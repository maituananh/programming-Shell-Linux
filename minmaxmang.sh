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
#tìm số lớn nhất trong mảng
amax=${a[1]}
for ((i=1 ;i<=n;i++)); do
if [ "${a[$i]}" -gt "$amax" ]; then
			amax=${a[$i]}
fi
done
echo "số lớn nhất là: $amax"
#tìm số nhỏ nhất trong mảng
amin=${a[1]}
for ((i=1 ;i<=n;i++)); do
if [ ${a[$i]} -lt $amin ]; then
			amin=${a[$i]}
fi
done
echo "số nhỏ nhất là: $amin"
