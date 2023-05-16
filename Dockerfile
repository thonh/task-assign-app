FROM 138373232063.dkr.ecr.ap-southeast-1.amazonaws.com/php-7.4-fpm:123

RUN docker-php-ext-install pdo pdo_mysql

# Copy the current project
COPY . /var/www

WORKDIR /var/www

# Move all the current .env.example to .env
# All other env variables will be defined in docker-compose.yml

RUN cp /var/www/.env.example /var/www/.env

RUN chmod -R 777 /var/www/storage
