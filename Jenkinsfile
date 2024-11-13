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

        // Nueva etapa de prueba
        stage('Nueva Prueba') {
            steps {
                script {
                    echo 'Ejecutando la nueva prueba'

                    // Aquí puedes agregar la nueva prueba que deseas ejecutar.
                    // Por ejemplo, probar si un archivo específico existe después de la instalación.
                    if (fileExists('multiply.js')) {
                        echo 'El archivo multiply.js existe.'
                    } else {
                        error 'El archivo multiply.js no se encuentra.'
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

