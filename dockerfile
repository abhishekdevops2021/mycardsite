FROM ubuntu:latest
MAINTAINER abhishekshahane-docker
RUN apt-get update -y
RUN apt-get install nginx -y
RUN apt-get install zip -y
RUN apt-get install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/greenhost.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip greenhost.zip 
RUN cp -rvf web-hosting-html-template/* .
RUN service nginx start
EXPOSE 80
ENTRYPOINT service nginx start && /bin/bash
