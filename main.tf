terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Imagen de Node.js
resource "docker_image" "nodejs" {
  name = "node:14"
}

# Contenedor para frontend (puerto interno 3000, externo 3000)
resource "docker_container" "nodejs_app" {
  image = docker_image.nodejs.name
  name  = "nodejs-app"
  ports {
    internal = 3000
    external = 3000
  }
}

# Contenedor para backend (puerto interno 3000, externo 3002)
resource "docker_container" "nodejs_app_2" {
  image = docker_image.nodejs.name
  name  = "nodejs-app-2"
  ports {
    internal = 3000 # Este puerto interno puede generar conflictos
    external = 3002 # Cambiado el puerto externo para evitar conflictos
  }
}

# Imagen de Postgres
resource "docker_image" "postgres" {
  name = "postgres:latest"
}

# Contenedor para Postgres (puerto interno 5432, externo 5432)
resource "docker_container" "postgres_db" {
  image = docker_image.postgres.name
  name  = "postgres-db"
  ports {
    internal = 5432
    external = 5432
  }
}

