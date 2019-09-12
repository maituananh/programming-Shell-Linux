#!/bin/bash
declare -a a
echo -n "nhập vào số phần tử của mảng: "
read n
s=0;
for ((i=1; i<=n ;i++)); do
echo -n "a[$i] = "
read m
a[$i]=$m;
done
echo "giá trị của mảng là: "
echo ${a[@]}
for ((i=1 ; i<=n ;i++)); do
s=$(($s + a[$i]));
done
echo "tổng của mảng là: "
echo $s
