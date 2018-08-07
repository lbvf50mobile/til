#!/usr/bin/env node

// JS Analogs of Math.floor(x): ~~x, x^0, x|0.

console.log("alias x='node 20180807_Tuesday/20180807.js'")
var colors = require('colors');

console.log("Analogs of floor ~~x, x^0, x|0".green)
console.log(Math.floor(11.2))
console.log(~~(11.2))
console.log((11.2)^0)
console.log((11.2)|0)