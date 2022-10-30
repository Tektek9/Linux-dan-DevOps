#!/bin/bash

#disini saya membuat game tebak2an dan alurnya yaitu user wajib memasukan username dan password dengan benar
#apabila sukses memasukan dengan benar maka lanjut untuk menebak nama tumbuhan yang memiliki buah berwarna merah

function game(){
echo Hayo Tebak salahsatu dari Tahun atau Tanggal kelahiran adik saya nomer 2????
read jawaban

if [[ ($jawaban -eq 2001 || $jawaban -eq 12)  ]];
then
        echo "Selamat tebakan anda benar, anda berhak mendapatkan hadiah uang dibayar nanti saja, hahahaha"
	#Apabila user memasukan jawaban dengan benar maka teks diatas akan tampil
else
        echo "Maaf tebakan anda salah, jadi anda gk dapet apa apa wkwkw"
	#Apabila salah maka akan menampilkan ini
fi
}

echo Silahkan masukan nama user 
read username
echo Masukan password
read password

if [[ ($username == 'admin' && $password == 'admin')  ]];
then
        echo Selamat anda sekarang memasuki game tebak - tebakan by Taukhid,........
        sleep 2
        game
	#Apabila user memasukan login dan password dengan benar maka akan tampil pesan selamat dan memanggil function game 
else
        echo Password atau Username anda salah, Cobalagi!
	#Apabila salah maka akan menampilkan pesan ini
fi
#OKE sebelumnya terimakasih sudah antusias melihat tulisan abstrak ini, salam dari Taukhid
