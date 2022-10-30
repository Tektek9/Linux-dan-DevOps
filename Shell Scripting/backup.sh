#!/bin/bash

src_dir=/root/belajar_script
#letak direktori

tgt_dir=/root/backup
#letak backup
#jangan lupa untuk sebelumnya dimohon untuk membuat folder backup sesuai direktorynya

curr_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")
#mengambil waktu

backup_file=$tgt_dir/$curr_timestamp.tgz
#membackup file dalam bentuk tgz dan diberinama sesuai dengan waktu pembackupannya

echo "Membackup pada $curr_timestamp"
echo "$backup_file"

tar czf $backup_file --absolute-names $src_dir
#perintah untuk memeriksa ukuran arsip dan letak direktori
echo "Backup Compelete"
