pipeline {
    agent any

    triggers {
        cron('H/5 * * * *')
    }

    stages {

        stage('Getting code from git') {
            steps {
               git branch: 'main', url: 'https://github.com/asim6604/devops-cron-task.git'

            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-node-app .'
            }
        }

    }
}
