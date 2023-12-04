node {
  stage('Checkout') {
    // Use the Git plugin to checkout the code
    git branch: 'master', url: 'https://github.com/0xfabio/jenkins-react-app.git'
  }
  stage('Build') {
    sh 'docker ps --filter name=node && docker kill node'
    sh 'docker run -d --rm --name node -v ${WORKSPACE}:/var/app -w /var/app node:lts-bullseye tail -f /dev/null'
    sh 'docker exec node npm --version'
    sh 'docker exec node ls -la'
    sh 'docker exec node npm install'
    sh 'echo "YOUR COMMANDS HERE!"'
    sh 'docker kill node'
  }
}
