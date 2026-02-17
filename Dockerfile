FROM php:8.4-cli

ENV APP_ENV=prod
ENV APP_DEBUG=0

RUN apt-get update && apt-get install -y \
    git unzip libicu-dev libzip-dev zip \
    && docker-php-ext-install intl pdo pdo_mysql zip

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /app

COPY . .

RUN composer install --no-dev --optimize-autoloader

RUN php bin/console cache:clear --env=prod

EXPOSE 8080

CMD sh -c "
php bin/console doctrine:migrations:migrate --no-interaction &&
php -S 0.0.0.0:${PORT:-8080} -t public
"

