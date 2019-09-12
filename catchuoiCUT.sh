#!/bin/bash
echo -n "nhập vào một chuỗi bất kỳ, mỗi trường cách nhau bởi dấu ; "
read st
echo -n "nhập vào trường cần cắt: "
read n
echo -n "chuỗi cắt được là: "
echo $st | cut -d";" -f$n
