# created by Emery K. Assogba to help student publish the works
# Maintainer assogba.emery@gmail.com Cotonou Bénin

FROM ubuntu:21.04

WORKDIR /webapp

ADD webapp /webapp

ENV DEBIAN_FRONTEND noninteractive # to avoid interactice questions

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get install -y apache2

RUN apt-get install -y mysql-server

RUN apt-get install php libapache2-mod-php php7.4-mysql php7.4-common php7.4-mysql -y 

RUN /etc/init.d/apache2 start

RUN cp /webapp/index.html /var/www/html/
