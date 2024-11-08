pipeline {
    agent any

    stages {

        stage('Build and Run Docker Image') {
            steps {
                    // Build the Docker image using Dockerfile
                    bat 'docker build -t flaskwebapp .'
                    // Run the Docker container in detached mode (in the background)
                    bat 'docker run -d -p 5004:5004 flaskwebapp'
                
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
