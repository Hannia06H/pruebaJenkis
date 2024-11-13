// sum.test.js
const expect = require('chai').expect;

const sum = (a, b) => a + b;

it('suma de 1 + 2 es igual a 3', () => {
  expect(sum(1, 2)).toBe(3);
});
