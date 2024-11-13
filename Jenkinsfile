pipeline {
    agent any

    stages {
        stage('Clonar Repositorio') {
            steps {
                git 'https://github.com/Hannia06H/pruebaJenkis.git'
            }
        }

        stage('Instalar Dependencias') {
            steps {
                script {
                    // Instalar dependencias usando npm
                    sh 'npm install'
                }
            }
        }

        stage('Ejecutar Pruebas') {
            steps {
                script {
                    // Ejecutar las pruebas
                    sh 'npm test'
                }
            }
        }
    }

    post {
        success {
            echo 'Las pruebas se ejecutaron correctamente.'
        }

        failure {
            echo 'Hubo un error al ejecutar las pruebas.'
        }
    }
}
