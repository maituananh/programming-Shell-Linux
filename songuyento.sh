#!/bin/bash
echo -n "nhập số nguyên dương n="
read n
i=2
while [ $i -le $(($n-1)) ] && [ $(($n%$i)) -ne 0 ]; do
i=$(($i+1))
done
if [ $i -eq $n ]; then
echo "$n là số nguyên tố"
else
echo "$n không là số nguyên tố"
fi
