#!/bin/bash

echo "Creando la estructura de directorios para el proyecto Docker Compose..."

# Directorios principales
mkdir -p traefik nginx prometheus grafana uptime_kuma php-configs backups/db

# Directorios para bases de datos
mkdir -p db/albaclinicalresearch \
         db/great-byte \
         db/kromopinceles \
         db/citasmaya

# Directorios para archivos de WordPress
mkdir -p wordpress/albaclinicalresearch \
         wordpress/great-byte \
         wordpress/kromopinceles \
         wordpress/citasmaya

echo "Creando archivos de configuración iniciales..."

# Archivo para los certificados de Traefik y asigna permisos
touch traefik/acme.json
chmod 600 traefik/acme.json

# Archivos de configuración de Nginx para cada sitio
touch nginx/albaclinicalresearch.com.conf \
      nginx/great-byte.com.conf \
      nginx/kromopinceles.com.conf \
     


echo "Estructura de directorios y archivos iniciales creados. Recuerda:"
echo "1. Pegar el contenido de tu docker-compose.yml en el archivo 'docker-compose.yml'."
echo "2. Pegar el contenido de traefik.yml en 'traefik/traefik.yml'."
echo "3. Pegar el contenido de prometheus.yml en 'prometheus/prometheus.yml'."
echo "4. Pegar el contenido de los archivos .conf de Nginx en sus respectivas ubicaciones en el directorio 'nginx'."
echo "5. Pegar el contenido de php.ini en 'php-configs/php.ini'."
echo "6. Configurar tu archivo .env con las credenciales de las bases de datos y Grafana."
echo "7. Configurar rclone para Google Drive."
echo "8. Asegurarte de que todos los dominios y subdominios apunten a la IP de tu VPS en tu proveedor de DNS."
echo "9. Crear la red 'proxy' si aún no existe: docker network create proxy"
echo "10. Iniciar los contenedores: docker compose up -d"
