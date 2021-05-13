# Imagem do node
FROM node 

#Diretório de criação
WORKDIR /usr/app

#Copia o package.json pra imagem
COPY package.json ./

#Instala as dependencias
RUN npm install

#Copia todos os arquivos (menos os presentes no .dockerignore)
COPY . .

#Expõe a porta 3333 para uso
EXPOSE 3333

#Roda o comando npm run dev
CMD [ "npm", "run", "dev" ]