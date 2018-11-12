// JS Desctructuring Assingnment 2 (wokring with vars)

console.log("alias x='node 20181112_Monday/20181112.js'")
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment

var a, b, r;
[a,b] = [10,20]
console.log(a)
console.log(b)

// ({ a, b } = { a: 10, b: 20 }); // dose not works in NODE
// console.log(a); // 10
// console.log(b); // 20

console.log("Here")

let x = {a: 1, b: 2}
console.log(x);
({a} = x);
console.log(a);

x = {a: 1, b: 2}
console.log(x);
({a,b} = x);
console.log(b)

x = {a: 1, b: 2}
console.log(x);
({a,b} = {a:15, b:20});
console.log(b)



let z = {a: "what?", b: "Happens?"};
({a,b} = z);
console.log(a,b) 

let y  = {a:1, b:2, c:3, o: 4};
({a,b,...rest} = y);
console.log(rest)

let n = [1,2,3,4,5,6];
([a,b,...rest] = n)
console.log(rest);