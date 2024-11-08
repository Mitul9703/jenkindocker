pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'flaskwebapp'  // Docker image name
                     // Docker tag (could be Git commit hash, version, etc.)
    }
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Mitul9703/jenkindocker.git'  // Replace with your repository
            }
        }
        stage('Build and Run Docker Image') {
            steps {
                script {
                    // Build the Docker image using Dockerfile
                    bat 'docker build -t ${DOCKER_IMAGE} .'

                    // Run the Docker container in detached mode (in the background)
                    bat 'docker run -d -p 8000:8000 ${DOCKER_IMAGE}'
                }
            }
        }
    }
    post {
        success {
            echo "Deployment successful!"
        }
        failure {
            echo "Deployment failed."
        }
    }
}
