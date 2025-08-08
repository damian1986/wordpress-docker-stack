#!/bin/bash

echo "Creando la estructura de directorios para el proyecto Docker Compose..."

# Directorios principales
mkdir -p traefik nginx prometheus grafana uptime_kuma php-configs backups/db loki loki_data promtail portainer_data

# Directorios para bases de datos
mkdir -p db/albaclinicalresearch \
         db/great-byte \
         db/kromopinceles \
         db/citasmaya \
         db/courses_school

# Directorios para archivos de WordPress
mkdir -p wordpress/albaclinicalresearch \
         wordpress/great-byte \
         wordpress/kromopinceles \
         wordpress/citasmaya \
         wordpress/courses_school

echo "Creando archivos de configuración iniciales..."

# Archivo para los certificados de Traefik y asigna permisos
touch traefik/acme.json
chmod 600 traefik/acme.json

# Archivos de configuración de Nginx para cada sitio
touch nginx/albaclinicalresearch.com.conf \
      nginx/great-byte.com.conf \
      nginx/kromopinceles.com.conf \
      nginx/citasmaya.com.conf \
      nginx/courses_school.great-byte.com.conf

# Archivo de configuración global de PHP
touch php-configs/php.ini

# Archivos de configuración para Loki y Promtail
touch loki/loki-config.yml
touch promtail/promtail-config.yml


echo "Estructura de directorios y archivos iniciales creados. Recuerda:"
echo "1. Pegar el contenido de tu docker-compose.yml en el archivo 'docker-compose.yml'."
echo "2. Pegar el contenido de traefik.yml en 'traefik/traefik.yml'."
echo "3. Pegar el contenido de prometheus.yml en 'prometheus/prometheus.yml'."
echo "4. Pegar el contenido de los archivos .conf de Nginx en sus respectivas ubicaciones en el directorio 'nginx'."
echo "5. Pegar el contenido de php.ini en 'php-configs/php.ini'."
echo "6. Pegar el contenido de loki-config.yml en 'loki/loki-config.yml'."
echo "7. Pegar el contenido de promtail-config.yml en 'promtail/promtail-config.yml'."
echo "8. Configurar tu archivo .env con todas las credenciales de las bases de datos y Grafana."
echo "9. Configurar rclone para Google Drive (si usas el script de backup)."
echo "10. Crear la red 'proxy' si aún no existe: docker network create proxy"
echo "11. Iniciar los contenedores: docker compose up -d"
