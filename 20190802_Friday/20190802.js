console.log("alias x='node 20190802_Friday/20190802.js'");

// JS String.prototype.matchAll.

// https://www.npmjs.com/package/match-all strange behaviour skip parentheses.
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/matchAll

const matchAll = require("match-all");

regex = /([a-z])(\d)/gi
string = "a1 b2 c3 d4 e5 f6 g7 h8"
console.log(string.match(regex))
// console.log([...string.matchAll(regex)])
console.log(matchAll(string,regex).toArray())
console.log(matchAll(string,regex).next()) // a
console.log(matchAll(string,regex).next()) // b
