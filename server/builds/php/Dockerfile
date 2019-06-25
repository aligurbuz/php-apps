FROM php:7.3.6-fpm

RUN docker-php-ext-install pdo_mysql

RUN apt-get update \
    && apt-get install -y sudo \
    && apt-get install -y \
        curl \
        sed \
        zlib1g-dev \
        git \
        zip \
        unzip \
        nano \
        openssl \
        libssl-dev \
        libcurl4-openssl-dev \
        libxml2-dev \
    && apt-get clean -y \
    && docker-php-ext-install soap
    && apt-get install -y supervisor
RUN pecl install mongodb
RUN echo "extension=mongodb.so" >> /usr/local/etc/php/conf.d/mongodb.ini
RUN cd ~
RUN sudo curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN echo 'cd /var/www/html/app' >> ~/.bashrc