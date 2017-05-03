#!/bin/bash

echo "Nazwa skryptu:  $0"
y=1
for x in $@
do
echo "Parametr $y: $x"
y=$((y+1))
done
echo "wszystkie parametry: $@"
echo  "ilosc parametrow: $#"
