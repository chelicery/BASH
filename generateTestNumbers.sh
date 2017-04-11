#!/bin/bash

echo "Witaj oto twoj test: "
function generateBinary
{
x=1
while [ $x -le 8 ]
do
let R=$RANDOM%2
echo -n "$R"
x=$[x + 1]
done
}
function generateHex
{
z=1
while [ $z -le 3 ]
do
let R=$RANDOM%16
case $R in
"10") echo -n "A" ;;
"11") echo -n "B" ;;
"12") echo -n "C" ;;
"13") echo -n "D" ;;
"14") echo -n "E" ;;
"15") echo -n "F" ;;
*) echo -n "$R"
esac
z=$[z + 1]
done
}
function generateOct
{
x=1
while [ $x -le 4 ]
do
let R=$RANDOM%9
echo -n "$R"
x=$[x + 1]
done
}
echo "###Zamien na DEC, HEX i OCT###"
y=1
while [ $y -le 7 ]
do
echo -n "Zad$y: "
generateBinary
echo
y=$[y+1]
done
y=1
echo "###Zamien na DEC BIN i OCT###"
while [ $y -le 7 ]
do
echo -n "Zad$y: "
generateHex
echo
y=$[y+1]
done
y=1
echo "###Zamien na DEC, HEX i BIN####"
while [ $y -le 7 ]
do
echo -n "Zad$y: "
generateOct
echo
y=$[y+1]
done

y=1
echo "###Zamien na OCT, HEX i BIN####"
while [ $y -le 7 ]
do
echo -n "Zad$y: "
let R=$RANDOM%2000
echo $R
y=$[y+1]
done
