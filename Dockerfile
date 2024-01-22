# Usando a imagem oficial do python
FROM python

# Setando o diretorio de trabalho
WORKDIR /app

# Copiando a aplicacao para dentro do container em /app
ADD . /app

# Instalando pacotes especificados no arquivo requirements.txt
RUN pip install -r requirements.txt

# Expondo a porta 80 do container
EXPOSE 80

# Executando a aplicacao "webapp.py" copiada para o /app quando o container iniciar
CMD ["python", "webapp.py"]