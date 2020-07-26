pipeline {
    agent any

    environment {
        WORKINGDIR = pwd()
    }

    stages {
        stage('Build') {
            steps {
                sh 'echo $WORKINGDIR'
                sh 'ansible-galaxy install geerlingguy.apache'
                dir ('packer'){
                    sh 'packer build web-server.json'
                }
            }
        }
    }
}