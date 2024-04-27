# Use uma imagem base Node.js
FROM node:alpine

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo package.json para o diretório de trabalho
COPY package.json .

# Instale as dependências usando npm
RUN npm install

# Copie o restante do código-fonte para o diretório de trabalho
COPY . .

# Construa a aplicação React para produção
RUN npm run build

# Exponha a porta 3000 para fora do contêiner
EXPOSE 3000

# Defina o comando padrão para iniciar a aplicação quando o contêiner for iniciado
CMD ["npm", "start"]
