const assert = require('chai').assert;
const isEven = require('../src/isEven'); // Asegúrate de que la ruta sea correcta.

describe('Prueba de la función isEven', function() {
  it('Debería devolver true para el número 4', function() {
    const result = isEven(4);
    assert.equal(result, true);
  });

  it('Debería devolver false para el número 3', function() {
    const result = isEven(3);
    assert.equal(result, false);
  });

  it('Debería devolver true para el número 0', function() {
    const result = isEven(0);
    assert.equal(result, true);
  });
});
