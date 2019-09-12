#!/bin/bash
echo -n "nhập vào số n : "
read n
giaithua=1;
for ((i=1; i<=n; i++)); do
giaithua=$(($giaithua*$i));
done
echo "giai thừa của $n là: "
echo $giaithua
