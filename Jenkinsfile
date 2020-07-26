pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'ansible-galaxy install geerlingguy.apache'
                sh 'packer build packer/web-server.json'
            }
        }
    }
}