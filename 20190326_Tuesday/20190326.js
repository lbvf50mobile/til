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

// Array from Map
let map = new Map([[1,2], [2,4], [4,8]]);
x = Array.from(map);
console.log(x);

let mapper = new Map([['1','a'],['2','b']]);
x = Array.from(mapper.values());
console.log(x);

x = Array.from(mapper.keys());
console.log(x);