console.log("alias x='node 20190625_Tuesday/20190625.js'");

// JS Negative Lookbehind assertion /(?<!y)x/;

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Assertions

let a =['green grape', 'ready grape'].filter( x => x.match(/(?<!green) grape/));
console.log(a);