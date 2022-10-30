read a
read b

#a dan b sebagai variabel inputan

if [ $a -gt $b ]; then
#disini ada sebuah kondisi menggunakan -ht yang berarti Greather Than atau Lebih Besar
        echo $a lebih besar dari $b
	#Jika Benar akan diprint 
else
        echo $a lebih kecil dari $b
	#Jika Salah akan diprint
fi

