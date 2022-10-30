#!/bin/bash
#ketikan diatas adalah penanda file script bash

echo "Saya akan menjadi DevOps Engineer baik"

echo $BASH
#Sebagai permision bash

nama="BUDI"
#Variabel inputan dengan sudah ditetapkan dengan isian yaitu BUDI
echo "halo ${nama}, silahkan isikan umur anda"

read umur
#User Input dengan menggunakan variabel umur
echo "Umur saya adalah ${umur}"

echo "Halo saya $1 masih belajar Dev Ops" 
#Argument yang mana $1 adalah argument dari kata yang diketikan 
#setelah nama file

sleep 2 

echo "Doakan saya agar  menjadi Dev Ops yang baik"

sleep 2
