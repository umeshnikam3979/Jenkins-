pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main',
                    credentialsId: 'github-cred',
                    url: 'https://github.com/umeshnikam3979/Jenkins-.git'
            }
        }

        stage('Database Backup') {
            steps {
                sh 'ansible-playbook -i localhost, db_backup.yml --vault-password-file /var/lib/jenkins/.vault_pass'
            }
        }

        stage('Copy Backup to EC2') {
            steps {
                sh 'ansible-playbook -i host.ini.bkp sql_backup.yml'
            }
        }
    }
}
