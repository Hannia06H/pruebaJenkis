@echo off
cd /d C:\ProgramData\Jenkins\.jenkins\workspace\Pruebas_Automatizadas
echo Ejecutando pruebas JavaScript...

REM Asegúrate de que las dependencias estén instaladas
npm install

REM Ejecuta el test usando Mocha (si usas Mocha)
npx mocha test/calculator-tests.js

REM O si usas Jest
REM npx jest test/calculator-tests.js

REM O si usas Jasmine
REM npx jasmine test/calculator-tests.js

echo Pruebas ejecutadas correctamente.
pause

