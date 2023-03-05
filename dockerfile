FROM ubuntu:latest
MAINTAINER abhishekshahane-docker..
RUN apt-get update 
RUN apt-get install nginx -y
WORKDIR /var/www/html
RUN echo mysite > index.html
RUN service nginx start
EXPOSE 80
