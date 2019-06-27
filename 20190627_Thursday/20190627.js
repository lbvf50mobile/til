console.log("alias x='node 20190627_Thursday/20190627.js'");

// JS Number.isInteger(x) true for  0 and -1;

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/isInteger

[2,0.2,-1,0].forEach(x => console.log(x,Number.isInteger(x)))
