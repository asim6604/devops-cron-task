pipeline{
    agent any
<<<<<<< HEAD
    environment{
     docker_image='asim6604/my-node-app'
=======

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
>>>>>>> 113100b3c828677832f00338034646fbf5c0d19c
}
}

stages{
    stage('clone'){
       steps{
        git 'https://github.com/asim6604/devops-cron-task.git'
    }
    }
    stage('build'){
        steps{
            sh 'docker build -t $docker_image .'
        }
    }
    stage('push to the docker hub'){
        steps{
            withCredentials([
                usernamePassword(
                    credentialsId:'dockerhub-credentials'
                    usernameVariable:'DOCKER_USER'
                    passwordVariable:'DOCKER_PASS'

                )
            ])
            sh '''
            echo "$DOCKER_PASS"|  docker login -u "$DOCKER_USER" --password-stdin
            docker push $docker_image
            '''
        }
    }
    stage('clean up'){
        step{
            sh 'docker system prune -f'
        }
    }
}