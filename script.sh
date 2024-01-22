#!/bin/bash

# Função para exibir mensagens
exibir_mensagem() {
    echo -e "\033[1m$1\033[0m"  # Exibir a mensagem em negrito
}

# Passo 1: Construir a imagem Docker...
exibir_mensagem "Passo 1: Construindo a imagem Docker..."
docker build -t registry.digitalocean.com/<NOME_UNICO_DO_SEU_REGISTRY>/<NOME_DA_APLICACAO>:<TAG_DA_APLICACAO> . | tee />

# Passo 2: Autenticar na Digital Ocean com seu Token de acesso pessoal e definir como padrão para uso na CLI...
exibir_mensagem "Passo 2: Autenticando na Digital Ocean..."
doctl auth init --context <NOME_DO_CONTEXTO> && doctl auth switch --context <NOME_DO_CONTEXTO> | tee /dev/tty

# Passo 3: Fazer login no registro da DigitalOcean (apenas esse comando simples, você já autenticou no passo acima)...
exibir_mensagem "Passo 3: Fazendo login no registro da DigitalOcean..."
doctl registry login | tee /dev/tty

# Passo 4: Fazer o push da imagem para o seu Registry da Digital Ocean...
exibir_mensagem "Passo 4: Fazendo push da imagem para o seu Registry na Digital Ocean..."
docker push registry.digitalocean.com/<NOME_UNICO_DO_SEU_REGISTRY>/<NOME_DA_APLICACAO>:<TAG_DA_APLICACAO> | tee /dev/tty

# Passo 5: Faz a limpeza local de todo sistema Docker (containers, imagens, redes...). Descomente se quiser usar.
# exibir_mensagem "Passo 5: Limpando o sistema Docker local..."
# docker system prune -f --all | tee /dev/tty
