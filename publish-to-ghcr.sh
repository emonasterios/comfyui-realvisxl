#!/bin/bash

USERNAME="emonasterios"
IMAGE_NAME="comfyui-realvisxl"
TAG="latest"

# Construir la imagen
docker build -t ghcr.io/$USERNAME/$IMAGE_NAME:$TAG .

# Push (requiere que ya estés logueado con `docker login ghcr.io`)
docker push ghcr.io/$USERNAME/$IMAGE_NAME:$TAG