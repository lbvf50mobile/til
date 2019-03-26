console.log("alias x='node 20190326_Tuesday/20190326.js'");

// JS Array.prototype.from

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/from#Sequence_generator_(range)

// Array from String
let x = Array.from("String");
console.log(x);

// Array from Set
let set = new Set(['one','one', 'one', 'two', 'three', 'four']);
x = Array.from(set);
console.log(x);
