pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'export WORKINGDIR=`echo pwd`'
                sh 'echo $WORKINGDIR'
                sh 'ansible-galaxy install geerlingguy.apache'
                dir ('packer'){
                    sh 'packer build web-server.json'
                }
            }
        }
    }
}