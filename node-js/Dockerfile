# Usa la imagen oficial de Node.js como base
FROM node:latest

# Establece el directorio de trabajo en la imagen
WORKDIR /usr/src/app

# Copia los archivos del proyecto al directorio de trabajo en la imagen
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el código fuente al directorio de trabajo en la imagen
COPY . .

# Expone el puerto en el que la aplicación Node.js se ejecutará (si es necesario)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "app.js"]
# Usa la imagen oficial de Node.js como base
FROM node:latest

# Establece el directorio de trabajo en la imagen
WORKDIR /usr/src/app

# Copia los archivos del proyecto al directorio de trabajo en la imagen
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el código fuente al directorio de trabajo en la imagen
COPY . .

# Expone el puerto en el que la aplicación Node.js se ejecutará (si es necesario)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "app.js"]
