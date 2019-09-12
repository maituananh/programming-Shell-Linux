#!/bin/bash
echo -n "nhập tên file cần đọc"
read filename
while read LINE
do echo $LINE | tr a-z A-Z
done < $filename
