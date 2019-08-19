console.log("alias x='node 20190819_Monday/20190819.js'");

// JS Object.feeze;

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/freeze
var x = {a: 1}
x.b = 2
console.log(x)
Object.freeze(x)
x.b = 222
console.log(x)
