#!/bin/bash
echo -n "Nhập năm "
read nam
ch=$(( $nam % 10))
ca=$(( $nam % 12))
case $ch in
0)
	chi="Canh"
;;
1)
	chi="Tân"
;;
2)
	chi="Nhâm"
;;
3)
	chi="Quý"
;;
4)
	chi="Giáp"
;;
5)
	chi="Ất"
;;
6)
	chi="Bính"
;;
7)
	chi="Đinh"
;;
8)
	chi="Mậu"
;;
9)
	chi="Kỷ"
;;
esac
case "ca" in
0)
	can="Thân"
;;
1)
	can="Dậu"
;;
2)
	can="Tuất"
;;
3)
	can="Hợi"
;;
4)
	can="Tý"
;;
5)
	can="Sửu"
;;
6)
	can="Dần"
;;
7)
	can="Mẹo"
;;
8)
	can="Thìn"
;;
9)
	can="Tỵ"
;;
10)
	can="Ngọ"
;;
11)
	can="Mùi"
;;
esac
echo "năm âm lịch là $chi $can"
