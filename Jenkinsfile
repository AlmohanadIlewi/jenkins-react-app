pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        // Use the Git plugin to checkout the code
        git branch: 'master', url: 'https://github.com/AlmohanadIlewi/jenkins-react-app.git'
      }
    }

    stage('Build') {
      steps {
        script {
          // Stop and remove the existing 'node' container if it's running
          sh 'docker ps --filter name=node | grep node && docker kill node || true'
          
          // Run a new 'node' container
          sh 'docker run -d --rm --name node -v ${WORKSPACE}:/var/app -w /var/app node:lts-bullseye tail -f /dev/null'

          // Execute npm commands inside the 'node' container
          sh 'docker exec node npm --version'
          sh 'docker exec node ls -la'
          sh 'docker exec node npm ci'
          
          // Build the React App
          sh 'docker exec node npm run build'

          // Add your custom commands here
          sh 'echo "YOUR COMMANDS HERE!"'

          // Stop the 'node' container
          sh 'docker kill node'
        }
      }
    }

    stage('Cleanup') {
      steps {
        // Use the Git plugin to checkout the code
        deleteDir()
      }
    }
  }
}
