FROM php:8.1-fpm-alpine

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN set -ex \
    	&& apk --no-cache add libzip-dev zip unzip freetype-dev libpng-dev libjpeg-turbo-dev nodejs yarn npm postgresql-dev\
        && docker-php-ext-install pdo_mysql zip gd opcache pdo_pgsql

WORKDIR /var/www/html
