FROM ubuntu:latest
MAINTAINER abhishekshahane-docker
RUN apt-get update 
RUN apt-get install nginx zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/frica.zip
WORKDIR /var/www/html
RUN unzip frica.zip 
RUN cp -rvf html/* 
RUN service nginx start
EXPOSE 80
ENTRYPOINT service nginx start && /bin/bash
