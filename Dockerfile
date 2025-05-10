# Gebruik officiële PHP image met Apache
FROM php:8.2-apache

# Installeer MySQLi extensie voor databaseverbindingen
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Zorg dat Apache .htaccess en mod_rewrite gebruikt
RUN a2enmod rewrite

# Installeer MySQL client
RUN apt-get update && apt-get install -y default-mysql-client

# Kopieer projectbestanden en init.sql
COPY . /var/www/html/
COPY init.sql /docker-entrypoint-initdb.d/init.sql
COPY entrypoint.sh /entrypoint.sh

# Zorg dat entrypoint script uitvoerbaar is
RUN chmod +x /entrypoint.sh

# Stel de werkdirectory in
WORKDIR /var/www/html/

# Open poort 80
EXPOSE 80

# Start Apache en voer init.sql uit op Railway DB
CMD ["/entrypoint.sh"]