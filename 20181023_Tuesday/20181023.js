// JS Promise use 'then' with two arguments.

console.log("alias x='node 20181023_Tuesday/20181023.js'")
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise

let one = new Promise((ok,fail)=>fail("Reject this primise"))
let two = new Promise((ok,fail)=>ok("Promise resolved"))

one.then(console.log,console.log)
two.then(console.log,console.log)