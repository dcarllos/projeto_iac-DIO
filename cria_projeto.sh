#!/bin/bash

#Script para provisionamento do projeto de iaC - DIO

#Criando os diretórios
mkdir /publico /adm /ven /sec

#Criando os grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#Usuários do grupo GRP_ADM
useradd carlos -g GRP_ADM -m -c "Carlos Sousa" -p $(openssl passwd Senha123) -s /bin/bash
useradd maria -g GRP_ADM -m -c "Maria Sousa" -p $(openssl passwd Senha123) -s /bin/bash
useradd joao -g GRP_ADM -m -c "João Sousa" -p $(openssl passwd Senha123) -s /bin/bash

#Usuários do grupo GRP_VEN
useradd debora -g GRP_VEN -m -c "Debora Silva" -p $(openssl passwd Senha123) -s /bin/bash
useradd sebastiana -g GRP_VEN -m -c "Sebastiana Silva" -p $(openssl passwd Senha123) -s /bin/bash
useradd roberto -g GRP_VEN -m -c "Roberto Silva" -p $(openssl passwd Senha123) -s /bin/bash

#Usuários do grupo GRP_SEC
useradd josefina -g GRP_SEC -m -c "Josefina Alves" -p $(openssl passwd Senha123) -s /bin/bash 
useradd amanda -g GRP_SEC -m -c "Amanda Alves" -p $(openssl passwd Senha123) -s /bin/bash
useradd rogerio -g GRP_SEC -m -c "Rogerio Alves" -p $(openssl passwd Senha123) -s /bin/bash

#Gerenciamento de permissões

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm /ven /sec


