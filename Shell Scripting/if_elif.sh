#!/bin/bash
#Sebelumnya harap diperhatikan bahwa kesalahan spasi
#Ataupun
#Tanda tulis bisa menyebabkan error

read a
read b
read c

if [[ $a -gt $b && $a -gt $c ]]
then
echo "A lebih besar"
elif [[ $b -gt $a && $b -gt $c ]]
then
echo "B lebih besar"
else
echo "C lebih besar"
fi

#perintah -gt adalah Greather Than