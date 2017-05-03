#!/bin/bash
sum=0
paramA=$1
paramB=$3
case $2 in
'-') sum=$((paramA - paramB));;
'+') sum=$((paramA + paramB));;
*) echo "Podaj poprawny prametr + lub -"
esac
echo $sum
