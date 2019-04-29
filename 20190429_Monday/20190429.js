#!/usr/bin/env node
console.log("alias x='node 20190429_Monday/20190429.js'");

// JS compare arrays by converting them a strings. (JS copares links to objects, not values)

a = [1,2,3,4,5]
b = [1,2,3,4,5]

console.log(" JS '==' and '===' compare links leading to  objects, not values.")

console.log("a == b", a == b)
console.log("a === b", a === b)
console.log("a.join(';') == b.join(';')", a.join(';') == b.join(';'))

a_copy = a

console.log("a_copy == a", a_copy == a)
console.log("a_copy === a", a_copy === a)

