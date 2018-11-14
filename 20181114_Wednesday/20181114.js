// JS Object Destructuring.

console.log("alias x='node 20181114_Wednesday/20181114.js'");
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment#Object_destructuring

// Basic assignment;
console.log("Basic assignment.")
var o = {p: 42, q: true};
var {p,q} = o;
console.log(p); // 42
console.log(q); // true

// Assignment without declaration
console.log("Assignment without declaration.")
var a, b;
({a,b} = {a:1, b: 2});
console.log(a); //1
console.log(b); //2


// Assigning to new variable names
console.log("Assigning to new variable names.")
var o = {p:125, q: "this is q!"};
var {p: foo, q: bar} = o;
console.log(foo); // 42
console.log(bar); // true

// Default values
console.log("Default values.")
var {a = "Default A", b = "Default b"} = {a: "the brand new A."};
console.log(a); // the brand new A.
console.log(b); // Default b

// Assignin to new variables name and providing default values
console.log("Assigning to new variables names and providing default values:")
var {a: aa = "The default aa value", b: bb = "The default bb value"} = {a: "The super puper a value."}; 
console.log(aa); // The super puper a value
console.log(bb); // The default bb value

// Example for Vyacheslav
console.log("Example for Vyacheslav:")
var {kivi: boom = "125"} = {}; 
// console.log(kivi); // kimi is not defined
console.log(boom) // 125