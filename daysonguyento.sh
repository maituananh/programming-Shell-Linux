#!/bin/bash
echo -n "nhập số nguyên dương n="
read n
for ((k=2; k<=n; k++)); do
i=2
while [ $i -le $(($k-1)) ] && [ $(($k%$i)) -ne 0 ]; do
	i=$(($i+1))
done
if [ $i -eq $k ]; then
	echo "$k "
fi
done
