#!/bin/bash

docker run -d \
    --name it-tools \
    --restart unless-stopped \
    -p 8090:80 \
    corentinth/it-tools:latest

open http://localhost:8090

# Example: ./docker-run.sh

# Explicaión CHAT-GPT
# -------------------
# docker run -d \                             : Inicia un contenedor en modo desacoplado (en segundo plano).
#     --name it-tools \                       : Le da un nombre al contenedor.
#     --restart unless-stopped \              : Configura el contenedor para reiniciarse automáticamente a menos que sea detenido manualmente.
#     -p 8090:80 \                            : Mapea el puerto 8090 del host al puerto 80 del contenedor.
#     corentinth/it-tools:latest              : Especifica la imagen de Docker que se va a utilizar.
#     Start-Process "http://localhost:8090"   : Abre el navegador predeterminado en la dirección http://localhost:8090.
