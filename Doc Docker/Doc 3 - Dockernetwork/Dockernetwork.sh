sudo docker network ls
sudo docker network create --driver bridge --subnet=10.10.10.0/24 net-A
#sudo docker network create --driver <JENIS DRIVER> --subnnet=<IP ADDRESS> <NAMA NETWORK> 
sudo docker network ls
#lakukan ls ulang network docker
sudo docker run -it --name containerA --network=net-A ubuntu
#sudo docker run -it --name <NAMA CONTAINER BARU> --network=<NAMA NETWORK> <NAMA IMAGE>
#maka anda akan berada didalam docker container baru
apt-get update
apt-get install net-tools -y
ifconfig 
#lalu cek ip anda, maka akan tampil ip yang barusan anada buat sesuai dengan network yang anda buat
CTRL+D
#maka anda akan keluar dari container yang anda buka saat ini