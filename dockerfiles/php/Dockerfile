FROM php:8.0.0-apache
ARG DEBIAN_FRONTEND=noninteractive
RUN docker-php-ext-install mysqli
RUN apt-get update \
   && apt-get install -y libzip-dev \
   && apt-get install -y zlib1g-dev \
   && rm -rf /var/lib/apt/lists/* \
   && docker-php-ext-install zip
   
RUN a2enmod rewrite
RUN a2dissite 000-default.conf
ADD ./apache.conf /etc/apache2/sites-available
RUN a2ensite apache.conf
RUN a2enmod proxy && a2enmod proxy_http && a2enmod proxy_balancer && a2enmod lbmethod_byrequests