FROM php:8.0-fpm-alpine

#сделать композер доступным внутри контейнера
COPY --from=composer /usr/bin/composer /usr/bin/composer
#config php
COPY ./php-fpm/conf.d /usr/local/etc/php/conf.d

RUN apk update \
    && apk --no-cache upgrade \
    && apk add yaml-dev autoconf make g++ \
    && pecl install yaml-2.2.2 xdebug-3.1.2 redis\
    && docker-php-ext-install mysqli pdo pdo_mysql bcmath\
    && docker-php-ext-enable yaml xdebug redis

WORKDIR ./app




