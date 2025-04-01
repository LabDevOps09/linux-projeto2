# 🚀 Provisionamento Automático de Servidor Web no GitHub Codespaces

##  Objetivo
Provisionar um servidor web **Apache** automaticamente em um ambiente **Linux** no **GitHub Codespaces**.

---

## 🛠 Passo a Passo

### 1️⃣ Atualizar Pacotes
```bash
sudo apt update && sudo apt upgrade -y
```

### 2️⃣ Instalar o Apache
```bash
sudo apt install apache2 -y
```

### 3️⃣ Iniciar o Apache
```bash
sudo service apache2 start
```

### 4️⃣ Criar Página de Teste
```bash
echo "<h1>Servidor Apache Provisionado com Sucesso!</h1>" | sudo tee /var/www/html/index.html
```

### 5️⃣ Corrigir Aviso de **FQDN (Fully Qualified Domain Name)**
```bash
echo "ServerName localhost" | sudo tee -a /etc/apache2/apache2.conf
```

### 6️⃣ Reiniciar o Apache
```bash
sudo service apache2 restart
```

### 7️⃣ Verificar Status do Apache
```bash
sudo service apache2 status
```
Se o Apache estiver rodando corretamente, a saída incluirá **"apache2 is running"**.

### 8️⃣ Testar Configuração
```bash
apachectl configtest
```
Se mostrar **"Syntax OK"**, tudo está correto! ✅

### 9️⃣ Descobrir a Porta do Apache
```bash
sudo netstat -tulnp | grep apache2
```
Normalmente, o Apache usa a **porta 80**.

### 🔟 Configurar Encaminhamento de Porta no **GitHub Codespaces**
- No **VS Code Web**, clique na aba **Ports**
- Adicione a **porta 80** e marque como **Pública**
- Copie a URL gerada e abra no navegador

Se aparecer **"Servidor Apache Provisionado com Sucesso!"**, o servidor está funcionando! 🎉

![des](https://github.com/user-attachments/assets/f10b61b2-45f8-4e30-ae9d-39adf982612f)


![des1](https://github.com/user-attachments/assets/0b0227ec-07a9-4fd6-bc3b-7961282bab60)



