#!/bin/bash
#Perintah untuk menghitung jumlah file log pada sebuah direktori

count=1
for file in `ls *.log`
#filter jumlah file .log
do
        echo "Log file number $count: $file"
	#menampilkan jumlah file dalam format log
        count=$((count+1))
	#apabila masih ada file .log maka jumlah akan bertambah sebanyak jumlah file log
done

