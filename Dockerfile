FROM php:8.2-fpm

# Installer dépendances système
RUN apt-get update && apt-get install -y \
    zip unzip curl git libpq-dev libzip-dev \
    && docker-php-ext-install pdo pdo_mysql zip

# Installer Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# Copier le projet
COPY . .

# Installer dépendances Laravel
RUN composer install --no-dev --optimize-autoloader

# Optimisations Laravel
RUN php artisan key:generate --force
RUN php artisan config:clear
RUN php artisan route:clear
RUN php artisan view:clear

EXPOSE 9000

CMD ["php-fpm"]
