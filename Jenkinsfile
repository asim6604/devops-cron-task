pipeline {
    agent any

    triggers {
        cron('H/5 * * * *')
    }

    stages {

        stage('Getting code from git') {
            steps {
                checkout scm
                echo "✅ Code checked out using SCM"
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-node-app .'
            }
        }

    }
}
