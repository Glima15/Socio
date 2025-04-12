#!/bin/bash

echo "🔧 Inicializando repositório Git..."

# Inicializa o repositório Git
git init

echo "📂 Adicionando arquivos..."
git add .

echo "📦 Commit inicial"
git commit -m 'Versão inicial do sistema de controle de retiradas'

echo "🔁 Renomeando branch para main"
git branch -M main

# Solicita ao usuário a URL do repositório
read -p "📡 Cole a URL do repositório GitHub (ex: https://github.com/usuario/Socio.git): " repo_url

echo "🔗 Adicionando origem remota"
git remote add origin $repo_url

echo "🚀 Enviando para o GitHub..."
git push -u origin main

echo "✅ Projeto publicado com sucesso!"