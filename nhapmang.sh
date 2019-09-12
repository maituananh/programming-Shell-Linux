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
