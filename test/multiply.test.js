// multiply.test.js
const assert = require('chai').assert;
const multiply = require('./src/views/multiply');

describe('Test de la función multiply', function() {
  it('Debería multiplicar 2 y 3 para obtener 6', function() {
    const result = multiply(2, 3);
    assert.equal(result, 6);
  });

  it('Debería multiplicar 0 y 5 para obtener 0', function() {
    const result = multiply(0, 5);
    assert.equal(result, 0);
  });

  it('Debería multiplicar -2 y 3 para obtener -6', function() {
    const result = multiply(-2, 3);
    assert.equal(result, -6);
  });
});

