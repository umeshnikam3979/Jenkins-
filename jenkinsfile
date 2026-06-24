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

        stage('Run Shell Script') {
            steps {
                sh 'chmod +x backup.sh'
                sh './backup.sh'
            }
        }

        stage('Run Ansible Playbook') {
            steps {
                 sh 'ansible-playbook -i host.ini.bkp sql_backup.yml'
             }
