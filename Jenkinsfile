pipeline {
    agent any

    stages {

        stage('Build and Run Docker Image') {
            steps {
                script {
                    // Build the Docker image using Dockerfile
                    bat 'docker build -t flaskwebapp .'

                    // Run the Docker container in detached mode (in the background)
                    bat 'docker run -d -p 8000:8000 flaskwebapp'
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
