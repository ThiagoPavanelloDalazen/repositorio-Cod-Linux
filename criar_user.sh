#!/bin/bash

echo "Criando usuarios"


useradd guest10 -c "Usuário convidado" -s /bin/bash -m
echo "Senha123" | passwd --stdin guest10
passwd -e guest10

useradd guest11 -c "Usuário convidado" -s /bin/bash -m
echo "Senha123" | passwd --stdin guest11
passwd -e guest11

useradd guest12 -c "Usuário convidado" -s /bin/bash -m
echo "Senha123" | passwd --stdin guest12
passwd -e guest12

useradd guest13 -c "Usuário convidado" -s /bin/bash -m
echo "Senha123" | passwd --stdin guest13
passwd -e guest13


echo "Finalizado!!"




