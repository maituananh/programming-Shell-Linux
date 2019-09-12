#!/bin/bash
echo -n "nhập a="
read a
echo -n "nhập b="
read b
if [ $a -gt $b ]; then
echo "Max là: $a"
echo "Min là: $b"
else
echo "Max là: $b"
echo "Min là: $a"
fi
