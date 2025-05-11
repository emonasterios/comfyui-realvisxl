Dockerfile: ComfyUI con RealVisXL incluido

FROM ghcr.io/ssitu/stable-diffusion-comfyui:latest

Crear carpeta si no existe

RUN mkdir -p /comfyui/models/checkpoints/

Descargar modelo RealVisXL

ADD https://huggingface.co/SG161222/RealVisXL_V3.0/resolve/main/RealVisXL_V3.0.safetensors /comfyui/models/checkpoints/RealVisXL_V3.0.safetensors

(Opcional) Establecer modelo por defecto con symlink

WORKDIR /comfyui/models/checkpoints/ RUN ln -s RealVisXL_V3.0.safetensors model.safetensors

(Opcional) copiar un workflow por defecto

COPY workflow_api.json /comfyui/workflows/default.json

Exponer puerto de la UI

EXPOSE 8188

CMD ["python3", "main.py"]