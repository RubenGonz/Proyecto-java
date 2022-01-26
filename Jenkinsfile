pipeline {
    agent any
    stages {
        stage('Tests de la aplicacion') {
            steps {
                sh 'mvn clean test'
            }
        }
        stage('Construccion') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Despliegue') {
            steps {
                sh 'docker build -t proyecto-java .'
                sh 'docker run -d --rm -p 8082:8080 --name ContenedorProyectoJava proyecto-java'
            }
        }
        stage('Test del despliegue') {
            steps {
                sh 'wget -m localhost:8082/app-web-ruben | grep mvorv'
            }
        }
//
//      En el caso de querer borrar el contenedor tras testearlo pondremos:
//
//        stage('Borar contenedor') {  
//            steps {
//                sh 'docker stop ContenedorProyectoJava'  
//            }
//        }
    }
}
