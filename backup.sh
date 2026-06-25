#!/bin/bash

BACKUP_DIR="/var/lib/jenkins/workspace/database"
DATE=$(date +%F_%H-%M-%S)

mysqldump -u$DB_USER -p$DB_PASS --no-tablespaces $DB_NAME > ${BACKUP_DIR}/employee_db_${DATE}.sql

echo "Backup completed: ${BACKUP_DIR}/employee_db_${DATE}.sql"
