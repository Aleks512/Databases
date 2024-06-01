# Utiliser l'image Alpine de Python
FROM python:3.9-alpine

# Définir le répertoire de travail
WORKDIR /app

# Installer les dépendances Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Installer les outils PostgreSQL et dcron
RUN apk update && apk add postgresql-client dcron tzdata

# Configurer le fuseau horaire 

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Copier le code de l'application
COPY . .

# Copier le script de sauvegarde dans le conteneur
COPY backup.sh /usr/local/bin/backup.sh

# Donner les droits d'exécution au script
RUN chmod +x /usr/local/bin/backup.sh

# Créer les répertoires de logs et ajuster les permissions
RUN mkdir -p /var/log && touch /var/log/backup.log /var/log/cron.log

# Configurer cron pour utiliser un fichier de log
RUN echo "CRON_LOG=/var/log/cron.log" >> /etc/environment

# Ajouter une tâche cron pour exécuter le script de sauvegarde toutes les heures à la 5ème minute
RUN echo "5 * * * * /usr/local/bin/backup.sh >> /var/log/cron.log 2>&1" > /etc/crontabs/root

# Exposer le port sur lequel l'application sera exécutée
EXPOSE 8000

# Commande pour démarrer le serveur Django et dcron
CMD crond -f -l 2 && python manage.py runserver 0.0.0.0:8000
