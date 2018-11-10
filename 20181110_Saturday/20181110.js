// JS Destructuring assingnment 1.


// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment

console.log("alias x='node 20181110_Saturday/20181110.js'")

var a, b, rest;
[a,b] = [10,20]
console.log(a)
console.log(b)
//[a,b,...rest] = [10,20,30,40,50] // dose not works in node v.8.12.0
//console.log(rest)