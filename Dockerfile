# Gebruik officiële PHP image met Apache
FROM php:8.2-apache

# Installeer MySQLi extensie voor databaseverbindingen
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Zorg dat Apache .htaccess en mod_rewrite gebruikt
RUN a2enmod rewrite

# Kopieer projectbestanden naar Apache web root
COPY . /var/www/html/

# Stel de werkdirectory in
WORKDIR /var/www/html/

# Open poort 80
EXPOSE 80
