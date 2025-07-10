pipeline{

    agent any
    environment{
        docker_image = 'asim6604/my-node-app'
    }
    stages{
    stage('clone'){
       steps{
        git branch: 'main' , url: 'https://github.com/asim6604/devops-cron-task.git'
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
        steps{
            sh 'docker system prune -f'
        }
    }
}
}
}







