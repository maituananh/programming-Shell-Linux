#!/bin/bash
echo "nhập số cần đảo: "
read n
sodaonguoc=0
while [ $n -gt 0 ]; do
let "s= $n % 10"
let "sodaonguoc = ($sodaonguoc * 10) + $s"
let "n = $n / 10"
done
echo $sodaonguoc
