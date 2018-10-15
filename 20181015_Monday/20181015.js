// JS  module.exports, require and Ruby require_relative

console.log("alias x='node 20181015_Monday/20181015.js'")
console.log(module.paths)
// https://www.sitepoint.com/understanding-module-exports-exports-node-js/
// https://medium.freecodecamp.org/requiring-modules-in-node-js-everything-you-need-to-know-e7fbd119be8
const first = require('./one')
console.log(first)
first.one()
first.two()
const second = require('./two')
console.log(second)