pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Pull code from github'
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'MyPipelineID', url: 'https://github.com/nourhann14/Jenkins_Draft.git']])
                sh 'ls -l'
            }
        }
        stage('Built') {
            steps {
                echo 'build application'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing.....'
            }
        }
        stage('Release') {
            steps {
                echo 'Releasing....'
            }
        }
    }
}
