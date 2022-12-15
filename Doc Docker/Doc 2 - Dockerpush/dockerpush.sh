#Simpel push docker
sudo docker login
sudo docker images
sudo docker tag <imageID> <username>/<nameRepo>
sudo docker images
sudo docker push <imageID> <username>/<nameRepo>