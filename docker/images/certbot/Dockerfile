FROM ubuntu:16.10

RUN apt-get update && apt-get install -y certbot 

COPY create.sh . 
EXPOSE 80 443 

CMD bash create.sh 
