#!/bin/bash
echo -n "Nhap vao mot chuoi bat ky: "
read st
echo -n "Nhap vao truong can cat: "
read n
echo -n "Chuoi cat duoc la: "
echo $st | awk -F" " '{print $n}' | tr a-z A-Z
