// JS using Expect lib.
console.log("alias x='node 20181018_Thursday/20181018.js'")

// https://github.com/mjackson/expect
// https://docs.npmjs.com/getting-started/installing-npm-packages-locally
// using CommonJS modules
var expect = require('expect')
expect(1).toEqual(1,"this is works")
//expect(1).toEqual(2,"this is not works")