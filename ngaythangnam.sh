#!/bin/bash 
echo -n "nhap nam: "
read nam
case $thang in
1|3|5|7|8|10|12)
echo "thang $thang co 31 ngay"
;;
4|6|9|11)
2
echo "thang $thang co 30 ngay"
;;
2)
if [ $(($nam % 4)) -eq 0]; then
echo "thang $thang co 29 ngay"
else
echo "thang $thang co 28 ngay"
fi
esac

