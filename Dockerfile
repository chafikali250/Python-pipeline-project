FROM python:3.10-slim

WORKDIR /app

# Copier requirements.txt s'il existe et installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt || true

# Copier le reste des fichiers du projet
COPY . .

CMD ["python", "src/main.py"]
