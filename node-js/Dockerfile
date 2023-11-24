#Specify a base image
FROM node:alpine

#Specify a working directory
WORKDIR /usr/app

#Copy the project
# Copiar el directorio nodejs al directorio de trabajo /app en el contenedor
COPY ./nodejs /app

#Install dependencies
RUN npm install 

EXPOSE 3000

#Default command
CMD ["npm","start"]
