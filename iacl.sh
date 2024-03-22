#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuáriso..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
chage -d 0 carlos
useradd maria -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
chage -d 0 maria
useradd joao -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
chage -d 0 joao
useradd debora -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
chage -d 0 debora
useradd sebastiana -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
chage -d 0 sebastiana
useradd roberto -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
chage -d 0 roberto
useradd josefina -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
chage -d 0 josefina
useradd amanda -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
chage -d 0 amanda
useradd rogerio -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
chage -d 0 rogerio

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM...."



