# Usa una imagen base de Python 3.11
FROM python:3.11

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia todos los archivos de la API al contenedor
COPY . .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 8000 para acceder a la API
EXPOSE 8000

# Comando para ejecutar la API dentro del contenedor
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
