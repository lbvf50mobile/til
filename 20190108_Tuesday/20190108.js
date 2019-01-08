// JS spread operator FOR ARRAYS works only with iterable variables.

console.log("alias x='node 20190108_Tuesday/20190108.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Expressions_and_Operators
// https://codeburst.io/javascript-es6-the-spread-syntax-f5c35525f754

let test = "hi";
let z = [...test];
console.log(z);
let west = ["west"];
let y = [...west];
console.log(y)
let test2 = 22;
try{
let x = [...test2];
}catch(e){
    console.log(e.message)
}
console.log([..."ok"]);

let f = (...z) => console.log(z);
// https://zendev.com/2018/05/09/understanding-spread-operator-in-javascript.html
f([1,2]);
f(1);
f(1,2,3);