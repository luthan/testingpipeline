pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'WORKINGDIR=`echo pwd`'
                sh 'ansible-galaxy install geerlingguy.apache'
                dir ('packer'){
                    sh 'packer build web-server.json'
                }
            }
        }
    }
}