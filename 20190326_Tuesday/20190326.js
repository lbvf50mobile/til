console.log("alias x='node 20190326_Tuesday/20190326.js'");

// JS Array.prototype.from;

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

// Array from an Array like object (arguments)
function ff(){
    return Array.from(arguments);
}
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions
x = ff(1,2,3);
console.log(x);

//  Using arrow functions and Array.from

// Using an arrow function as the map funtoin to manipulate the elements
x = Array.from([1,2,3],x =>x+x)
console.log(x);

// Generate a sequence of numbers
// Since the array is initialized with `undefined` on each position,
// The value of `v` below will be `undefined`
x = Array.from({length: 5}, (v,i) => i);
console.log(x);

// Sequence generator (range)

// Sequence generator function (commonly refferred to as "range", e.g. Clojure, PHP etc)

const range = (start, stop, step) => Array.from({length: (stop-start)/step + 1}, 
    (_,i) => start + (i*step));

// Generate numbers range 0..4
x = range(0,4,1)
console.log(x);

// Genrate numbers range 1..10 with step of 2
x = range(1,10,2);
console.log(x);
x = range(0,10,2)
console.log(x);

// Generate the alphbet using Array.from
//making use of it being ordered as a sequence
x = range('A'.charCodeAt(0), 'Z'.charCodeAt(0),1).map(x => String.fromCharCode(x));
console.log(x);

