#!/bin/bash

echo "Atualizando Servidor..."

apt-get update
apt-get upgrade -y

apt-get install apache2 -y
apt-get install unzip -y
systemctl start apache2

echo "Baixando Aplicação..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/main.zip

unzip /tmp/main.zip -d /tmp/

cp -R /tmp/linux-site-dio-main/* /var/www/html/

rm /tmp/main.zip
rm -R /tmp/linux-site-dio-main

echo "Aplicação no AR!"
echo "Bye"
