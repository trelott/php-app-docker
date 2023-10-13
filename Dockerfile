FROM php:7.4-apache

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

WORKDIR /var/www/html

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y ffmpeg
RUN apt-get install -y unzip

RUN docker-php-ext-install bcmath
RUN docker-php-ext-install sockets

COPY . .

ENV COMPOSER_ALLOW_SUPERUSER=1
RUN composer install

EXPOSE 80