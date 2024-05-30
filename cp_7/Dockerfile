# Utiliser l'image Alpine-based Python
FROM python:3.9-alpine

# Définir le répertoire de travail
WORKDIR /app

# Installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code de l'application
COPY . .

# Copier le script de sauvegarde dans le conteneur
COPY backup.sh /usr/local/bin/backup.sh

# Donner les droits d'exécution au script
RUN chmod +x /usr/local/bin/backup.sh

# Installer dcron pour la planification des tâches cron
RUN apk update && apk add dcron

# Ajouter une tâche cron pour exécuter le script de sauvegarde toutes les heures à la 5ème minute.
RUN echo "5 * * * * /usr/local/bin/backup.sh > /proc/1/fd/1 2>/proc/1/fd/2" > /etc/crontabs/root

# Exposer le port sur lequel l'application sera exécutée
EXPOSE 8000

# Commande pour démarrer le serveur Django et dcron
CMD crond -f -l 2 & python manage.py runserver 0.0.0.0:8000
