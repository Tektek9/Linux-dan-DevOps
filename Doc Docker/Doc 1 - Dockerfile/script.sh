#perintah untuk build docker image 

#FROM INSTRUCTION
docker build -t taukhidajin/from from
#Perintah untuk melakukan build image

docker image ls | grep taukhidajin
#untuk melihat docker image taukhidajin yang dibuat

#RUN INSTRUCTION
docker build -t taukhidajin/run run
#Perintah Running

docker build -t taukhidajin/run run --progress-plain --no-cache
#Perintah Running build yang lebih detail dari build diatasnya lagi

#CMD INSTRUCTION digunanakan ketika kode instruksi dijalankan
docker build -t taukhidajin/command command
#Perintah untuk melakukan build command

docker image inspect taukhidajin/command
#Perintah untuk melihat detail command dari image container

docker container create --name command taukhidajin/command
#Perintah diatas adalah membuat docker container dengan nama yang diambil command 

docker container start command
#Perintah untuk menjalankan command pada file docker yang berawalan "CMD"

docker container logs command 
#Melihat hasil dari docker container

#Fungsi dari inspect adalah untuk melihat detail dari image dockernya 
#Yang mana nanti ktika docker dijalankan maka perintah command akan dijalankan 
#Ketika perintah selesai dijalankan maka docker   

#LABEL INSTRUCTION digunakan untuk menampilkan label 
docker build -t taukhidajin/label label
#Perintah untuk membuat label

docker image inspect taukhidajin/label
#Perintah untuk lakukan inspek label docker

# ADD INSTRUCTION 
docker build -t taukhidajin/add add

docker container create --name add taukhidajin/add

docker container start add

docker container logs add 