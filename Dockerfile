# Gebruik een image met Apache en PHP
FROM php:8.2-apache

# Installeer benodigde PHP-extensies (pas aan indien nodig)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Zet de Apache document root naar /var/www/html
WORKDIR /var/www/html

# Kopieer jouw project naar de container
COPY html/ /var/www/html/

# Geef schrijfrechten aan Apache (indien nodig)
RUN chown -R www-data:www-data /var/www/html

# Zet Apache aan op poort 80
EXPOSE 80

# Start Apache in de voorgrond
CMD ["apache2-foreground"]