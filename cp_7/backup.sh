#!/bin/sh

# Configuration des variables
PG_USER="${POSTGRES_USER}"
PG_PASSWORD="${POSTGRES_PASSWORD}"
PG_DB="${POSTGRES_DB}"
PG_HOST="${POSTGRES_HOST:-localhost}"
BACKUP_DIR="/var/lib/postgresql/backup"
BACKUP_NAME="db-backup_$(date +'%Y-%m-%d_%H-%M-%S').backup"
LOG_FILE="/var/log/backup.log"

# Créer le répertoire de sauvegarde s'il n'existe pas
mkdir -p $BACKUP_DIR

# pg_dump : 'p' en texte, 'c' binaires, 'F' format, 'f' fichier
# Exporter le mot de passe pour éviter les demandes de mot de passe
# si "c" il faut que l'extension soit .backup
# si "p" il faut que l'extension soit .sql
export PGPASSWORD=$PG_PASSWORD
pg_dump -h $PG_HOST -U $PG_USER -d $PG_DB -F c -f "$BACKUP_DIR/$BACKUP_NAME"

# Vérifier le résultat et journaliser
if [ $? -eq 0 ]; then
  echo "$(date) Backup completed: $BACKUP_DIR/$BACKUP_NAME" >> $LOG_FILE
else
  echo "$(date) Backup failed" >> $LOG_FILE
fi

# Nettoyer la variable de mot de passe
unset PGPASSWORD
