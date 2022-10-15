#!/bin/bash

echo "Atualizando o Servidor e instalando os pacotes.."

apt-get update -y  && apt-get upgrade -y  && apt-get install apache2 unzip wget -y 

echo "Baixando o copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip && unzip main.zip
cp -R linux-site-dio-main/* /var/www/html/  

