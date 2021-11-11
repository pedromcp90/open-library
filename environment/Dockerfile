FROM php:8.0.0-apache
ARG DEBIAN_FRONTEND=noninteractive
RUN docker-php-ext-install mysqli
RUN apt-get update \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip
    
RUN docker-php-ext-install pdo pdo_mysql
RUN a2enmod rewrite
RUN chown -R "$APACHE_RUN_USER:$APACHE_RUN_GROUP" /var/www/ \
# allow running as an arbitrary user (https://github.com/docker-library/php/issues/7430)
&& chmod 1777 /var/www/