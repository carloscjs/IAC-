#!/bin/bash

echo "Desafio Dio IAC - Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões"

echo "Criando Diretórios"

mkdir /publico 
mkdir /ven   
mkdir /mark   
mkdir /fin     
mkdir /t.i    

echo "Criando Grupos"

groupadd GUP_VEN 
groupadd GUP_MARK 
groupadd GUP_FIN 
groupadd GUP_T.I 


echo "Criando Usuários"

echo "Usuários Setor Vendas"

useradd vitor -c "Vitor Saldanha" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_VEN
passwd vitor -e
useradd cinthia -c "Cinthia Lemos" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_VEN
passwd cinthia -e
useradd kevin -c "Kevin Dias" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_VEN
passwd kevin -e
 
echo "Usuários Setor Marketing"

useradd arnaldo -c "Arnaldo Barros" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_MARK
passwd arnaldo -e
useradd barbara -c "Barbara Torres" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_MARK
passwd barbara -e
useradd michele -c "Michele Silva" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_MARK
passwd michele -e

echo "Usuários Setor Financeiro"

useradd bruno -c "Bruno Ribas" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_FIN
passwd bruno -e
useradd bianca -c "Bianca Tavares" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_FIN
passwd bianca -e
useradd miriam -c "Miriam Rios" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_FIN
passwd miriam -e

echo "Usuários Setor T.I"

useradd gilberto -c "Gilberto Santos " -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_T.I
passwd gilberto -e
useradd rafaela -c "Rafaela Sato" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_T.I
passwd rafaela -e
useradd bryan -c "Bryan Ferreira" -m -s /bin/bash -p $(openssl passwd 123456) -G GUP_T.I
passwd bryan -e

echo "Especificando permissões dos diretórios"

chown root:GUP_VEN /ven
chown root:GUP_MARK /mark
chown root:GUP_FIN /fin
chown root:GUP_T.I /t.i

chmod 770 /ven
chmod 770 /mark
chmod 770 /fin
chmod 770 /t.i
chmod 777 /publico

echo "Fim....."
