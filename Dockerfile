FROM php:latest
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get -y install libzip-dev libicu-dev libgmp-dev
RUN docker-php-ext-install mysqli zip intl bcmath gmp
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug bcmath gmp
