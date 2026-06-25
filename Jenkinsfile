pipeline {
    agent any

    environment {
        VAULT_PASS = credentials('vault-password')
    }

    stages {

        stage('Database Backup') {
            steps {
                sh '''
                echo "$VAULT_PASS" > vault_pass.txt
                chmod 600 vault_pass.txt

                ansible-playbook \
                  -i host.ini.bkp \
                  db_backup.yml \
                  --vault-password-file vault_pass.txt

                rm -f vault_pass.txt
                '''
            }
        }
    }
}
