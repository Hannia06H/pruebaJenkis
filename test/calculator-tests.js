var chai = require("chai");
var assert = chai.assert;
var calculator = require('../calculator');

describe('prueba unitaria: ', function(){
    describe('vericando funcion addTest', function(){
        it('verificar valor retornado: assert.equal(val, val): ', function(){
            resutl = calculator.addTest(1,1);
            assert.equal(resutl, 2);
        });
    });
});