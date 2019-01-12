// JS [...newSet(x)]

console.log("alias x='node 20190112_Saturday/20190112.js'");

let dublicates = [1,1,2,2,3,3,3]
let uniq = [...new Set(dublicates)];
console.log(dublicates, uniq);