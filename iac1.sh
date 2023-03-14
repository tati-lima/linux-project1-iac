#!/bin/bash

echo "Criando Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -c "Carlos Gomes" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -c "Maria Gonçalves" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -c "João Carlos" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora -c "Débora Almeida" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Souza" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -c "Roberto Dias" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd josefina -c "Josefina Morais" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -c "Amanda Xavier" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -c "Rogério Coelho" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"
