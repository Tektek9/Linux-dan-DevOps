#Dokumentasi
#Nama: Taukhid Aji Nurwijayadi
#Membuat Dockefile dengan image linux alphine versi 3

FROM alphine:3 
#FROM adalah perintah
#alphine:3 adalah argument atau parameter

#untuk mencari kenapa harus menggunakan alphine versi 3, bisa mencari di dockerhub (hub.docker.com)
#cek bagian tag

RUN mkdir hello
RUN echo "Hello World" > "hello/world.txt"
RUN cat "hello/world.txt"
#perintah setelah RUN akan dijalankan ketika docker image ini dijalankan
#perintah yang dijalankan menggunakan perintah linux

CMD cat "hello/world.txt"
#Setiapkali docker container dijalankan maka perintah CMD(Command) dijalankan