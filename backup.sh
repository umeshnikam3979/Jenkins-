#!/bin/bash

DB_USER="manish"
DB_PASS="manish@123"
DB_NAME="employee_db"

BACKUP_DIR="/var/lib/jenkins/workspace/database"
DATE=$(date +%F_%H-%M-%S)

mysqldump -u$DB_USER -p$DB_PASS --no-tablespaces $DB_NAME > ${BACKUP_DIR}/employee_db_${DATE}.sql

echo "Backup completed: ${BACKUP_DIR}/employee_db_${DATE}.sql"
