// JS Array destructuring.

console.log("alias x='node 20181113_Tuesday/20181113.js'");

//https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment

// Basic variable assignment
console.log("Basic variable assigenment:");
var foo = ['one1', 'two1', 'three1'];
var [one, two, three] = foo;
console.log(one);
console.log(two);
console.log(three);

// Assignmnet separate from declaration
console.log("Assignment separate from declaration:")
var a,b;
[a,b] = [1,2];
console.log(a); //1
console.log(b); //2

// Default values
console.log("Default vaules:")
var a,b;
[a=5, b=7] = [1];
console.log(a); // 5
console.log(b); // 1

// Swapping varibales
console.log("Swapping varialbes:")
var a = 1;
var b = 3;
[a,b] = [b,a];
console.log(a); //3
console.log(b); //1

// Passing an array returned from a function
console.log("Passing an array rteurned from a fuction:")
var f = () => [1,2];
var a,b;
[a,b] = f();
console.log(a); //1
console.log(b); //2

// Ignoring some returned values
console.log("Ignoring some returned values:");
var f = () => [8,9,10];
var [a, ,b] = f();
console.log(a); // 8
console.log(b); // 10
[,,] = f();

// Assigning the rest of an array to a variable
console.log("Assigning the rest of an array to a variable:")
var [a, ...b] = [19,20,21];
console.log(a); // 19
console.log(b); // [20,21]