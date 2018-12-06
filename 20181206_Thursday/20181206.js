// JS 'then' wraps rejected value wrapped resolving Promise.

console.log("alias x='node 20181206_Thursday/20181206.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/then#Chaining


// In all other cases, a resolving Promise is returned. In the following example,
// the first then() will return 42 wrapped resolving Promise even thought the 
// previous Promise in the chain was rejected.

Promise.reject()
.then(()=>99,()=>42) // onRejected returns 42 which is wrapped in a resolving Promise
.then(solution => console.log(`Resolved with ${solution}`)); // Resolved with 42
