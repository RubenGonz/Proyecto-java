pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps {
                sh 'docker-compose up --build .'
            }
        }
        stage('Test') {
            steps {
                sh 'wget -q http://www.rubengrsystem.com/home -O - | grep Pagina'
            }
        }
    }
}