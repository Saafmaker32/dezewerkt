#!/bin/bash

echo "Wachten op MySQL-connectie..."
sleep 10

echo "Voer init.sql uit op Railway database..."
mysql -h mysql.railway.internal -P 3306 -u root -pdKoENyxanuhrHlOuWovDKCbOMcJQKtFM railway < /docker-entrypoint-initdb.d/init.sql

echo "Start Apache..."
apache2-foreground