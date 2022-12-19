sudo docker network rm nodapache-net
sudo killall -9 node
sudo docker-compose stop
sudo systemctl restart docker
sudo docker network create nodnginx-net
sudo docker-compose up -d