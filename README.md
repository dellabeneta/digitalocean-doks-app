# K8S-Project | DOCKER e WEBAPP.PY para build

<img src="https://drive.google.com/uc?export=view&id=1P5tc95ACf-MK6YwklRQ9OgMvhizICuoe" width="1000">
<br>

Projeto contendo os arquivos .PY e Dockerfile, para build da imagem do container Docker e push para o Registry da Digital Ocean. Essa aplicação é de minha autoria e a mesma retorna o hostname do pod. É bastante útil para perceber o balanceamento de carga do cluster, já que a mesma efetua um autorefresh de 2 segundos.

Observe o aquivo .SH na raiz do projeto, ele pode ser útil para você, minimizando o uso de comandos no terminal. Caso você tenha sua própria imagem, lembre-se de ajustá-lo. 

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
