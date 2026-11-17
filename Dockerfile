# 1. Partimos de una imagen oficial ligera de Node.js basada en Alpine Linux
FROM node:18-alpine

# 2. Definimos el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiamos los archivos de configuracion y el codigo fuente
COPY package*.json ./
COPY server.js ./

# 4. Exponemos el puerto de escucha hacia el exterior
EXPOSE 3000

# 5. Comando de ejecucion cuando arranque el contenedor
CMD ["node", "server.js"]
