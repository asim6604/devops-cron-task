pipeline {  // start of pipeline block

    agent any

    environment {  // start of environment block
        docker_image = 'asim6604/my-node-app'
    } // end of environment block ✅

    stages {  // start of stages block

        stage('clone') {  // start of clone stage
            steps {
                git branch: 'main', url: 'https://github.com/asim6604/devops-cron-task.git'
            }
        }  // end of clone stage ✅

        stage('build') {
            steps {
                sh 'docker build -t $docker_image .'
            }
        }  // end of build stage ✅

        stage('push to the docker hub') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'dockerhub-credentials',
                        usernameVariable: 'DOCKER_USER',
                        passwordVariable: 'DOCKER_PASS'
                    )
                ]) {
                    sh '''
                        echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                        docker push $docker_image
                    '''
                }
            }
        }  // end of push stage ✅

        stage('clean up') {
            steps {
                sh 'docker system prune -f'
            }
        }  // end of cleanup stage ✅

    }  // end of stages block ✅

}  // end of pipeline block ✅
