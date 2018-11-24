// JS Rest in Object Destructuring

console.log("alias x='node 20181124_Saturday/20181124.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment#Rest_in_Object_Destructuring

let {a, b, ...rest} = {a: "one", b: "two", c: "three", d: "four"};
console.log(a); // one;
console.log(b); // two;
console.log(rest); // {c: three, d: "four"}