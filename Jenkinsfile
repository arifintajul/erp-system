pipeline {
    agent any

    stages {
		stage('Sync Files') {
            steps {
                bat 'xcopy "C:\\xampp81\\htdocs\\erp\\*" "C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\erp-system2\\" /E /I /Y'
            }
        }
         stage('Checkout1') {
            steps {
                //git 'https://github.com/arifintajul/erp-system.git'
            }
        }
       stage('Checkout') {
            steps {
                dir('C:\\xampp81\\htdocs\\erp') { // Set working directory to your project folder
                    git 'https://github.com/arifintajul/erp-system.git'
                }
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
