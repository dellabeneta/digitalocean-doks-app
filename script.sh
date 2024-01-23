#!/bin/bash

negrito() {
    echo -e "\033[1m$1\033[0m"
}

echo " "
negrito "Passo 1: Construindo a imagem Docker..."
echo " "
sleep 3
docker build -t registry.digitalocean.com/XXX/YYY:ZZZ .

echo " "
negrito "Passo 2: Autenticando na Digital Ocean..."
echo " "
sleep 3
doctl auth init --context XXX && doctl auth switch --context XXX

echo " "
negrito "Passo 3: Fazendo login no Registry da DigitalOcean..."
sleep 2
echo " "
doctl registry login

echo " "
negrito "Passo 4: Fazendo push da imagem para o Registry..."
sleep 3
echo " "
docker push registry.digitalocean.com/XXX/YYY:ZZZ

## O comando docker system prune -f --all é usado para limpar recursos 
## não utilizados no Docker, como contêineres, redes, volumes e imagens
## sem uso. Este comando remove esses recursos de forma segura, ajudando
## a liberar espaço no sistema. Se desejar utilizar, basta remover ou
## comentar com '#' as linhas 37 e 45.

: '
echo " "
negrito "Passo 5: Limpando os caches locais do Docker..."
sleep 3 
echo " "
docker system prune -f --all
echo "Processo finalizado com sucesso!"
sleep 4
'