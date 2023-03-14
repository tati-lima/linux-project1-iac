#!/bin/bash

echo "Criando Usuários"

useradd guest10 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest10 -e

useradd guest11 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest10 -e

useradd guest12 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest10 -e

useradd guest13 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest10 -e

useradd guest14 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest10 -e

echo "Finalizado"
