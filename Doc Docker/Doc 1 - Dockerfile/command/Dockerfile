#Berisikan perintah command yang nantinya dieksekusi setelah docker container dijalankan

FROM alphine:3 

RUN mkdir hello
RUN echo "Hello World" > "hello/world.txt"
RUN cat "hello/world.txt"

CMD cat "hello/world.txt"
#Setiapkali docker container dijalankan maka perintah CMD(Command) dijalankan