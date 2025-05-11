
# ComfyUI + RealVisXL on RunPod

Este repositorio permite desplegar un endpoint serverless en [RunPod.io](https://runpod.io) que ejecuta ComfyUI con el modelo `RealVisXL_V3.0.safetensors` ya integrado.

## ¿Qué incluye?

- Imagen base: `ghcr.io/ssitu/stable-diffusion-comfyui`
- Modelo `RealVisXL_V3.0.safetensors` descargado al contenedor
- `workflow_api.json` listo para ejecutar imágenes desde prompt
- Compatible con Hugging Face Spaces vía frontend Gradio

## Cómo usar en RunPod

1. En RunPod, crear nuevo **Serverless Endpoint**
2. Elegir opción: `Deploy from GitHub`
3. Pegar el link de este repo: