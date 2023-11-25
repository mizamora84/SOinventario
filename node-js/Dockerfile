# Establecer la imagen base de Node.js
FROM node:latest

# Crear un directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar el contenido del directorio node-js al directorio de trabajo en el contenedor
COPY node-js/ .

# Instalar las dependencias si es necesario (ejemplo, si hay un package.json)
# RUN npm install

# Comando por defecto para ejecutar la aplicación
CMD ["node", "app.js"]

