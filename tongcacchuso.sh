#!/bin/bash
echo "nhập vào 1 số nguyên "
read n
tongchuso=0
while [ $n -gt 0 ]; do
let "s= $n % 10"
let "tongchuso= $tongchuso + $s"
let "n = $n / 10"
done
echo $tongchuso
