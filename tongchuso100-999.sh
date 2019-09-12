echo "nhập vào 1 số có 3 chữ số: "
read so
if [ ${#so} -eq 3 ]; then
a=$(($so%10))
b=$((($so/10)%10))
c=$((($so/100) % 10))
echo "tổng các chữ số là: $(($a+$b+$c))"
else echo "nhập sai"
fi
