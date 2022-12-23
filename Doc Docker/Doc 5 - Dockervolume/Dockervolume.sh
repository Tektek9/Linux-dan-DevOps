#Fungsi ini untuk melakukan sharing atar container

mkdir /tmp/share
#disini adalah letak folder/volume yang nantinya akan dishare pada docker container

touch /tmp/share/index.php
#membuat file index.php didalam folder share

docker run -it -v /tmp/share:/tmp/share --name sharevolume1 ubuntu
#docker run -it -v <LETAK FOLDER YANG DISHARE pada :LETAK FOLDER YANG DISHARE> --name <NAMA CONTAINER> <IMAGE>
#Setelah itu anda akan memasuki docker container yang barusan anda buat
#lalu silahkan cek letak folder/volume yang dishare tadi

ls /tmp/share/
#lalu silahkan cek isinya apakah terdapat file index.php

touch /tmp/share/reboot.php
#apabila ada bisa langsung membuat file baru dengan nama reboot.php

CTRL+P+Q
#untuk keluar dari container tanpa menghentikannya

ls /tmp/share/
#setelah itu silahkan cek apakah file reboot.php tersedia didalam volume yang disahre tadi
#apabila ada maka proses yang anda lakukan benar

docker run -it --volumes-from sharevolume2 --name sharevolume3 debian
#docker run -it --volumes-from <CONTAINER SOURCE> --name <CONTAINER DESTINATION> <IMAGE>
#untuk posisi saat ini sudah berada didalaam container sharevolume3

mkdir /tmp/baru/
#lalu buatlah folder baru didalam folder /tmp

ls /tmp
#lalu cek apakah folder /tmp/baru/ ada pada container sharevolume3

touch /tmp/baru /coba.txt
#lalu cek apakah didalamnya terdapat file coba.txt

echo "sharevolume2" > /tmp/baru/coba.txt 
#lalu lakukan modif isi text pada file yang tadi dibuat

cat tmp/baru/coba.txt
#lalu cek isi file apakah sudah teredit sesuai dengan yang kita isikan tadi

CTRL+P+Q
#untuk keluar dari file tersebut

docker container start sharevolume2
#APABILA container dalam keadaan mati, bisa dilakukan starting container terlebih dahulu

docker exec -it sharevolume2 bash
#Setelah melakukan starting docker maka masuklah ke dalam container tersebut

ls
#Setelah itu silahkan cek isi dari container apakah folder /tmp yang disharing tersedia?

ls /tmp/baru/
#dan apabila tersedia maka silahkan cek isi dari file tersebut termasuk file coba.txt

cat /tmp/baru/coba.txt 
#setelah itu laukan cek pada file coba.txt apakah sudah termodifikasi sesuai dengan file yang dari sudah kita edit ketika di container sharevolume3
#dan apabila benar, maka isi file tersebut berisikan teks yang tadinya sudah kita edit sama persis dengan isi yang ada pada container sharevolume2