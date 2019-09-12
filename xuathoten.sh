#!/bin/bash
echo -n "nhập vào họ tên đầy đủ của bạn: "
read string
words=( $string )
echo "họ là: ${words[0]}"
echo "lót là: ${words[1]}"
echo "tên là: ${words[2]}"

#cách khác
echo -n "nhập vào họ lót tên: "
read ho lot ten
echo -e "ho: $ho\nlot: $lot\nten: $ten"

#in ra từng từ ngăn cách bởi dấu cách
echo " Họ tên lần lượt là: "
for word in $string
do
echo ${word}
done
