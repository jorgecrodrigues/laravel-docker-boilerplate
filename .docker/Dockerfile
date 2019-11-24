FROM ubuntu:latest

MAINTAINER Jorge Rodrigues <jorgerodrigues9@outlook.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y &&\
    apt-get upgrade -y &&\
    apt-get install htop curl nginx supervisor -y &&\
    apt-get install php -y

WORKDIR /var/www

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

EXPOSE 80
