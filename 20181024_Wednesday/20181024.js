// JS Promise.all

console.log("alias x='node 20181024_Wednesday/20181024.js'")

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise
// Promise.all(iterable)
// Returns a promise that either fulfills when all of the promises in the
// iterable argument have fulfilled or refects as soosn as one of the promises in the iterable
// arguments rejected.
// If the returned promise fulfills, it is fullfilled with an array of the values from the fulfiled promises
// in the same order as defined in the iterable. If the returned promise rejects,
// it is rejected with the reason from the first promise in the iterable that rejected.
// this method can be usefull for aggregating results of multimple promises.

let all_ok = [new Promise((o,f)=>o("Number 0 - ok")), new Promise((o,f)=>o("Number 1 - ok"))]
Promise.all(all_ok).then(console.log).catch(console.log)
let several_ok = [
    new Promise((o,f)=>f("Number 0 - fails")),
    new Promise((o,f)=>f("Number 1 - fails")),
    new Promise((o,f)=>o("Number 2 - ok"))
]
Promise.all(several_ok).then(console.log).catch(console.log)