pipeline {
    agent any

    stages {
        stage('Clonar Repositorio') {
            steps {
                git branch: 'main', url: 'https://github.com/Hannia06H/pruebaJenkis.git'
            }
        }

        stage('Listar Archivos') {
            steps {
                script {
                    // Lista los archivos en el directorio de trabajo para verificar que los archivos estén presentes
                    if (isUnix()) {
                        sh 'ls -R'  // Para Unix
                    } else {
                        bat 'dir /s'  // Para Windows
                    }
                }
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
                    // Verifica si los archivos existen antes de ejecutar las pruebas
                    echo 'Verificando existencia de los archivos necesarios...'

                    if (fileExists('test/multiply.test.js') && fileExists('src/multiply.js')) {
                        echo 'Los archivos existen, ejecutando las pruebas.'
                        // Ejecutar las pruebas dependiendo del sistema operativo
                        if (isUnix()) {
                            sh 'npm test'
                        } else {
                            bat 'npm test'
                        }
                    } else {
                        error 'Los archivos necesarios no existen en el repositorio.'
                    }
                }
            }
        }

        stage('Nueva Prueba') {
            steps {
                script {
                    echo 'Ejecutando la nueva prueba'

                    // Aquí puedes agregar la nueva prueba que deseas ejecutar.
                    // Por ejemplo, probar si un archivo específico existe después de la instalación.
                    if (fileExists('test/multiply.test.js')) {
                        echo 'El archivo multiply.test.js existe.'
                    } else {
                        error 'El archivo multiply.test.js no se encuentra.'
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


