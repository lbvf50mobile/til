console.log("alias x='node 20190202_Saturday/20190202.js'");

// JS converst array to string for comparision, Array.prototype.sort changes array it been called on.

// https://stackoverflow.com/questions/54492467/javascript-formal-criteria-definition-of-array-comparison
// https://stackoverflow.com/questions/8328908/javascript-surprising-array-comparison
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort

console.log("JS converts array to string for comparison:")
console.log(["a","b"] > ["a","aa"] && ['a','aa'] < ['a', 'cc'])
console.log([["a","aa"],['b','bb'],["a","c"],['b',"ab"],['b',"a"]].sort())

console.log("Array.prototype.sort is impure functions that changes input:")
a = [4,3,2]
a.sort();
console.log(a)