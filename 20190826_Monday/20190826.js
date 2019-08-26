console.log("alias x='node 20190826_Monday/20190826.js'");

// JS: Infinity == Math.pow(10,1000);

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Infinity

var maxNumber = Math.pow(10,1000); // max postive number
if (maxNumber == Infinity ){
    console.log("Let's call it Infinity!");
    // expected output: "Let's call it Infinity!"
}

console.log(1 / maxNumber);
// expected output: 0

console.log( Infinity - Infinity)