#!/bin/bash
#Perintah untuk membuat banyak file dengan format txt

while true
do
        touch file.`date +%s`.txt
	#untuk menamaan file saya gunakan sesuai tanggal jadi berbeda2
	#proses generate akan berjalan terus hingga dimatikan secara paksa
done

