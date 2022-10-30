#!/bin/bash

#Perintah untuk Backup Rutin, dengan fitur filter file duplikat
source=$1
dest=$2

function fileSama() {
        if [ -f $dest/backup2.tar.gz ]; then
                echo this file already exists
		#Apabila ada file yang sama pada lokasi $dest maka akan menampilkan pesan tersebut
                exit
        fi
}

function KompresiDir() {

tar -cvf backup2.tar $source
gzip backup2.tar
#proses kompresi file ke .tar
mv backup2.tar.gz $dest
#memindahkan file backupan ke lokasi $dest
}

fileSama
KompresiDir
#memanggil function yang telah dibuat untuk dijalankan
