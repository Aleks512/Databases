#!/bin/sh

BACKUP_DIR=/var/lib/postgresql/backup
BACKUP_FILE=$BACKUP_DIR/backup_$(date +%Y-%m-%d-%H-%M-%S).sql

# Créer un backup de la base de données
pg_dump -U $POSTGRES_USER -d $POSTGRES_DB -F c -b -v -f $BACKUP_FILE

echo "Backup completed: $BACKUP_FILE"
