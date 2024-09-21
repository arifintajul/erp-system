pipeline {
    agent any

    stages {
         stage('Checkout') {
            steps {
                deleteDir()  // Menghapus isi workspace
                git url: 'https://github.com/arifintajul/erp-system.git', branch: 'main'
                 
            }
        }
 		
        stage('Lint PHP Files') {
            steps {
                //bat 'for /R %%f in (*.php) do (php -l "%%f")'
				bat 'script-lint-php.bat'
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
