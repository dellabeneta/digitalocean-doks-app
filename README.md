# K8S-Project | DOCKER e WEBAPP.PY para build
<br>
<img src="https://drive.google.com/uc?export=view&id=1PBm4Y0Ou3Pbe3Ce12dTb63dbKXgAKhnQ" width="1000">
<br>
Repositório contendo os arquivos .PY/Flask e Dockerfile para a construção da imagem do container Docker e o envio para o Registry da Digital Ocean. Esta aplicação é de minha autoria (e do ChatGPT, rs) e retorna o hostname do pod. Realiza auto-refresh a cada dois segundos, o que será muito útil para futuras implantações em clusters Kubernetes. Para uso local, com docker run/exec em um pod, o auto-refresh ajuda a notar a aplicação saudável e responsiva.
<br>
<br>
Observe o arquivo .SH na raiz do projeto; ele pode ser útil para você, minimizando o uso de comandos no terminal. Lembre-se de ajustá-lo conforme seu ambiente e necessidade.
<br>
<br>

# O ambiente usado para o projeto foi:

#### Linux Ubuntu 22.04.3 LTS (Jammy Jellyfish) via WSL2
Ref.: https://canonical-ubuntu-wsl.readthedocs-hosted.com/en/latest/guides/install-ubuntu-wsl2/

#### Terraform = v1.7.0 (on linux_amd64)
Ref.: https://developer.hashicorp.com/terraform/install

> Entendimento importante: para que o CLI do Terraform possa se conectar ao provider Digital Ocean, obtenha ajuda em: https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs 

#### Doctl CLI = 1.101.0-release
Ref.: https://docs.digitalocean.com/reference/doctl/how-to/install/

> Entendimento importante: no link acima você também irá ter o 'howto' de como criar seu API Token e todo processo de autenticação via CLI da Digital Ocean.

#### VSCode = 1.85.2 
Ref.: https://code.visualstudio.com/download

Plugins que utilizei no VSCode durante o processo de construção do projeto: 

 - WSL: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl
 - Docker: https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker
 - Hashicorp Terraform: https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform
 - Kubernetes: https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.vscode-kubernetes-tools
 - YAML: https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml


<br><br>Bem, por enquanto, é isso pessoal :)
