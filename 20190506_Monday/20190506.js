#!/usr/bin/env node
console.log("alias x='node 20190506_Monday/20190506.js'");

// JS create new array (new Array(2), new Array(2).fill(1), [...new Array(2)]);

console.log("(new Array(2))",new Array(2))
console.log("(new Array(2)).map((x,i)=>1+i)",(new Array(2)).map((x,i)=>1+i))
console.log("(new Array(2)).fill(1)",(new Array(2)).fill(1))
console.log("(new Array(2).fill(1).map((x,i)=>1+i)",(new Array(2)).fill(1).map((x,i)=>1+i))
console.log("[...Array(2)]",[...Array(2)])
console.log('[...Array(2)].map((x,i)=>1+i',[...Array(2)].map((x,i)=>1+i))

// what if do not use parentheses 
console.log('what if do not use parentheses: new Array(2).fill(1)',new Array(2).fill(1))
