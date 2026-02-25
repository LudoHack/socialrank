FROM python:3.11-slim

WORKDIR /app

# Instalar dependencias Python
COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar backend
COPY backend/ ./backend/

# Copiar frontend ya compilado (dist/)
COPY frontend/dist/ ./frontend/dist/

WORKDIR /app/backend

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
