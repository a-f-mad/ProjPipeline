# Usa imagem oficial do Python
FROM python:3.13-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos para dentro do container
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expõe a porta 5000
EXPOSE 5000

# Comando para rodar o Flask
CMD ["python", "main.py"]

