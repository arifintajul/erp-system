pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/arifintajul/erp-system.git'
            }
        }
        stage('Build') {
            steps {
                sh 'php -l **/*.php'  // Lint PHP Files
            }
        }
        stage('Test') {
            steps {
                sh 'phpunit tests/'  // Run Unit Tests
            }
        }
    }
}
