#!/bin/bash
echo "nhập vào câu: "
read STRING
if [[ -z ${STRING} ]]; then
echo "-+ chuỗi nhập vào rỗng"
echo "-+ Exit"
exit 1
fi
number_word=$(echo ${STRING} | wc -w)
echo "số lượng từ: ${number_word}"
echo "số kí tự của chuỗi: ${#STRING}"

#in ra từng từ ngăn bởi dấu cách
s=0
for word in $STRING
do
s=$s+${#word}
done
echo "số kí tự không phải khoảng trắng là: $s"

#lấy độ dài chuỗi
echo "lấy độ dài từ vị trí số 3 đén 7"
echo $STRING | cut -c3-7

#tìm vị trí chuỗi theo ký t
var="xin chao ngay moi"
echo `expr index "$var" chao` #5

#thay thế chuỗi
echo "thay thế chữ Quang bằng chữ Quan"
var="Tran Quang Lam"
echo ${var//Quang/Quan}

#tách chữ ngăn cách bằng kí tự khác
var1="Tran;Quan;Lam"
var2=" ${var//;/}"
for word in $var2
	do
	echo ${#word}
done

#viết hoa toàn bộ
echo $var2 | tr a-z A-z
#or
echo "viết hoa toàn bộ :${var2^^}"

#viết thường toàn bộ
var3="TRAN QUAN LAM"
echo "viết thường toàn bộ : ${var3,,}"

#viết thường xuống theo kí tự
echo "viết thường xuống theo kí tự: ${var3,,[RANUM]}"

#viết hoa lên theo kí tự
var4="tran quan lam"
echo "viết hoa lên theo kí tự: ${var4^^[tql]}"

#đọc file và đếm dòng tập tin
let "s = 0"
while read p
do
	let "s = $s+1"
	echo $p
done < xulichuoi.sh
echo "s dong trong file xulichuoi.sh là: $s"

#xóa chuỗi con
var="welcome to ABC blog"
echo ${var#w*o} #me to ABC blog
echo ${var##w*o} #g

