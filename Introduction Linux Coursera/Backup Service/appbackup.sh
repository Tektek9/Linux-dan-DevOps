#!/bin/bash

source=$1
dest=$2
#Variabel source dan dest nanti akan dijelaskan di screenshootan


tar -cvf backup.tar $source
gzip backup.tar
#membuat sebuah arsip dari isi variabel yang ditampung pada $source
mv backup.tar.gz $dest
#memindahkan file backup ke dalam lokasi yang telah ditampung pada $dest
