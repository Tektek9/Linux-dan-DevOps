#!/bin/bash
#Disini saya scripting loops bash

for((i==0; i<10; i++))
do
echo "$i"
done

#Perhatian apabila $i pada echo tidak dimasukan dengan benar
#Maka loop akan tetap berjalan
#Tetapi tidak menampilkan apa apa

for FILE in *.txt
do
echo $FILE
done

#Perintah $FILE akan menampilkan semua file dalam format .txt
#didalam direktory belajar_script
