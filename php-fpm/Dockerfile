FROM php:8.1-fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY ./php-fpm/conf.d /usr/local/etc/php/conf.d

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y \
        libyaml-dev \
        autoconf \
        make \
        g++ \
        libzip-dev \
        unzip \
        p7zip-full \
    && pecl install \
        yaml-2.2.2 \
        xdebug-3.1.2 \
        redis \
    && docker-php-ext-install \
        mysqli \
        pdo \
        pdo_mysql \
        bcmath \
        zip \
    && docker-php-ext-enable \
        yaml \
        xdebug \
        redis

WORKDIR /var/www/html/app




