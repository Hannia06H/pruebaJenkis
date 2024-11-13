@echo off

REM Establecer la ruta del JDK y Selenium (si no están configurados en variables de entorno)
set JAVA_HOME=C:\Program Files\Java\jdk-17
set PATH=%JAVA_HOME%\bin;%PATH%

REM Directorio donde está tu código fuente y el driver de Chrome
set PROJECT_DIR=C:\ruta\a\tu\proyecto
set SELENIUM_JAR=C:\ruta\a\selenium\selenium-server-standalone-x.xx.x.jar
set CHROMEDRIVER_PATH=C:\ruta\a\chromedriver.exe

REM Cambiar al directorio del proyecto
cd %PROJECT_DIR%

REM Compilar el archivo LoginTest.java con las dependencias de Selenium
javac -cp ".;%SELENIUM_JAR%" LoginTest.java

REM Ejecutar el archivo compilado LoginTest con Selenium
java -cp ".;%SELENIUM_JAR%" LoginTest

REM Fin
echo Pruebas ejecutadas correctamente.
pause

