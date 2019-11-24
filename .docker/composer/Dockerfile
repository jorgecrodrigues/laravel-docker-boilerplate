FROM composer:latest

COPY . .

RUN ./build.sh

ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]
CMD ["composer"]