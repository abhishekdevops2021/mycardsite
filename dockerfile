FROM ubuntu:latest
MAINTAINER abhishekshahane
RUN apt-get update 
RUN apt-get install nginx -y
RUN apt-get install zip -y
RUN apt-get install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/frica.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip frica.zip
RUN cp -rvf html/* .
RUN service nginx start
EXPOSE 80
