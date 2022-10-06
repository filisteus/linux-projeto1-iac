#!/bin/bash

echo "Cirando diretórios...."

mkdir /{publico,adm,ven,sec}

echo "Criando grupos de usuários..."

echo GRP_ADM GRP_VEN GRP_SEC | xargs -n 1 groupadd -r

echo "Criando usuários...."

useradd carlos -m -s /bin/bash -p $(openssl  passwd  -crypt Senha123)
useradd maria -m -s /bin/bash -p $(openssl  passwd  -crypt Senha123)
useradd joao -m -s /bin/bash -p $(openssl  passwd  -crypt Senha123)
useradd debora -m -s /bin/bash -p $(openssl  passwd  -crypt Senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl  passwd  -crypt Senha123)
useradd roberto -m -s /bin/bash -p $(openssl  passwd  -crypt Senha123)
useradd josefina -m -s /bin/bash -p $(openssl  passwd  -crypt Senha123)
useradd amanda -m -s /bin/bash -p $(openssl  passwd  -crypt Senha123)
useradd rogerio -m -s /bin/bash -p $(openssl  passwd  -crypt Senha123)

echo "Especificando permissões dos diretótios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /{adm,ven,sec}
chmod 777 /publico


echo "Fim..."
