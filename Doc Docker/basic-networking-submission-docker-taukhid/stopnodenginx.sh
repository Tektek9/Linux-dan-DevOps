sudo docker-compose down
sudo docker-compose rm -f nginx
sudo docker-compose rm -f nodenginxserver
sudo nginx -s stop
sudo systemctl start nginx
sudo docker network disconnect -f nodnginx-net
sudo docker network rm nodnginx-net
sudo docker network ls
