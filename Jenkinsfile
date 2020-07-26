pipeline {
    agent any

    environment {
        WORKINGDIR = pwd()
    }

    stages {
        stage('Build') {
            steps {
                sh 'sudo ansible-galaxy install geerlingguy.apache'
                dir ('packer'){
                    sh 'sudo packer build web-server.json'
                }
            }
        }
    }
}