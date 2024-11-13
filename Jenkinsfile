pipeline {
    agent any

    stages {
        stage('Clonar Repositorio') {
            steps {
                git branch: 'main', url: 'https://github.com/Hannia06H/pruebaJenkis.git'
            }
        }

        stage('Instalar Dependencias') {
            steps {
                script {
                    // Verifica si el sistema operativo es Unix o Windows
                    if (isUnix()) {
                        // Para sistemas Unix (Linux/macOS)
                        sh 'npm install'
                    } else {
                        // Para sistemas Windows
                        bat 'npm install'
                    }
                }
            }
        }

        stage('Ejecutar Pruebas') {
            steps {
                script {
                    // Ejecutar las pruebas dependiendo del sistema operativo
                    if (isUnix()) {
                        sh 'npm test'
                    } else {
                        bat 'npm test'
                    }
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

