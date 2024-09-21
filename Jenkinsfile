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
		
        stage('Deploy to Production') {
            when {
                expression { currentBuild.result == null }  // Hanya jika build berhasil
            }
            steps {
                // Salin file ke folder produksi lokal
                bat 'xcopy /E /Y "C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\erp-system3\\*" "C:\\xampp81\\htdocs\\erp-prod\\"'
                //bat 'php artisan migrate --force'  // Jalankan migrasi database jika perlu
				// Ubah path ke shared folder di server
                //bat 'xcopy /E /Y "C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\erp-system3\\*" "\\\\<IP_SERVER>\\shared_folder\\erp\\"'
                //bat 'php artisan migrate --force'  // Jalankan migrasi database jika perlu
                //bat 'winscp.com /command "open sftp://username:password@<IP_SERVER>" "put -r C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\erp-system3\\* /path/to/remote/erp/" "exit"'

				
                echo 'Deployment to production completed.'
            }
        }
		
		
		
    }
    post {
        always {
            junit 'reports/junit.xml'  // Publish test results
        }
    }
}
