#!/bin/bash

DB_USER="manish"
DB_PASS="manish@123"
DB_NAME="employee_db"

BACKUP_DIR="/home/umesh/SQL"
DATE=$(date +%F_%H-%M-%S)

mkdir -p $BACKUP_DIR

mysqldump -u$DB_USER -p$DB_PASS --no-tablespaces $DB_NAME > $BACKUP_DIR/${DB_NAME}_${DATE}.sql

echo "Backup completed: $BACKUP_DIR/${DB_NAME}_${DATE}.sql"
