#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y
echo "Instalando apache2 e unzip"
apt-get install apache2 -y
apt-get install unzip -y
echo " Baixando aplicacao"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /linux-site-dio-main
echo "Copiando os Arquivos da aplicacao"
cp -R * /var/www/html/

