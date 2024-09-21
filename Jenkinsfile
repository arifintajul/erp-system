pipeline {
    agent any

    stages {
         stage('Checkout') {
            steps {
                deleteDir()  // Menghapus isi workspace
                git url: 'https://github.com/arifintajul/erp-system.git', branch: 'main'
                 
            }
        }
 		
        stage('Build') {
            steps {
                bat 'php -l **/*.php'  // Lint PHP Files
            }
        }
        stage('Prepare Reports') {
            steps {
                bat 'mkdir reports || echo "Reports folder already exists"'  // Create reports folder
            }
        }
        stage('Test') {
            steps {
                bat './vendor/bin/phpunit --log-junit reports/junit.xml tests/'  // Run Unit Tests with JUnit log
				echo 'Tests completed. Check for junit.xml in reports folder.'
           }
        }
    }
    post {
        always {
            junit 'reports/junit.xml'  // Publish test results
        }
    }
}
