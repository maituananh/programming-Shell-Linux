#!/bin/bash
echo "nhập vào số n: "
read n
i=1
tongle=0
tongchan=0
for ((i=1; i<=n ;i++)); do
if (($i % 2!=0)); then
	tongle=$(($tongle+$i))
elif (($i % 2==0))
then
tongchan=$(($tongchan+$i))
fi
done
echo "tổng lẻ là : $tongle "
echo "tổng số chẵn là : $tongchan "
