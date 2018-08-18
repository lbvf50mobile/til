console.log("alias x='node 20180819_Sunday/20180819.js'")

// ES6 Rest parameter. Extended parameter handling.
// http://es6-features.org/#RestParameter

var colors = require('colors');
const f = (...z) => console.log(z.toString().green)

f(1,2,3,4)
f("one","two","three","four")