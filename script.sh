#!/bin/bash

# Passo 1: construir a imagem Docker
docker build -t registry.digitalocean.com/dellabeneta/webapp:latest .

# Passo 2: autenticar na Digital Ocean com seu Token de acesso pessoal
doctl auth init --context dellabeneta && doctl auth switch --context dellabeneta

# Passo 3: fazer login no registro da DigitalOcean
doctl registry login

# Passo 4: fazer o push da imagem para o Registry da Digital Ocean
docker push registry.digitalocean.com/dellabeneta/webapp:latest

# Passo 5: faz a limpeza local de todo sistema Docker (containers, images, networks...)
docker system prune -f --all
