#!/bin/bash

add_user()
{
USER=$1
PASS=$2

useradd -m -p $PASS $USER && echo "Berhasil menambahkan User Baru"
# -m adalah secara otomatis memiliki my document
# -p adalah passwordnya rahasia
}

#MAIN

add_user shubhaml test@123

#perintah disini berguna untuk menambahkan user
#ketika user sukses ditambahkan maka akan menampilkan pesan berhasil menambahkan user baru
#ketika user telah ditambahkan maka akan ada folder user baru didalam /home
#yaitu bisa dicek dengan menggunakna perintah ls /home
#apabila user sudah ditambahkan maka akan muncul pesan 