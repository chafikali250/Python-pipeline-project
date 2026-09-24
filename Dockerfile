# Image de base Python légère
FROM python:3.10-slim

# Empêche Python d'écrire des fichiers .pyc et force l'affichage direct des logs
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier des dépendances et les installer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code du projet
COPY . .

# Commande par défaut pour exécuter le pipeline
CMD ["python", "src/main.py"]
