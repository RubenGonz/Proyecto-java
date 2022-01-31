pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps {
                sh "docker-compose build"
            }
        }
        stage('Test') {
            steps {
                sh 'wget -q http://www.rubengrsystem.com/home -O - | grep "Pagina inicial de Rubén González Rodríguez system"'
                sh 'wget -q http://www.rubengrsystem.com/phpmyadmin/ -O - | grep phpMyAdmin'
            }
        }
    }
}