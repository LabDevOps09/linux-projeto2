#!/bin/bash

# Atualiza a lista de pacotes e faz upgrade do sistema
sudo apt update && sudo apt upgrade -y

# Instala o servidor web Apache
sudo apt install apache2 -y

# Habilita o serviço do Apache para iniciar automaticamente
sudo service apache2 start

# Verifica o status do Apache
sudo service apache2 status

# Cria um arquivo HTML básico para testar o servidor
echo "<h1>Servidor Apache Provisionado com Sucesso!</h1>" | sudo tee /var/www/html/index.html

# Exibe uma mensagem de sucesso
echo "Servidor Web instalado e rodando! Acesse no navegador pelo IP do servidor."

AH00558: apache2: Could not reliably determine the server's fully qualified domain name
