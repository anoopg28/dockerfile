FROM ubuntu:latest
LABEL "Creator"="Anoop"
LABEL "Project"="Demo"
ENV DEBIAN-FRONTEND=noninteractive
RUN apt update
RUN apt install git -y
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/logs/apache2
ADD anoop.tar.gz /var/www/html
