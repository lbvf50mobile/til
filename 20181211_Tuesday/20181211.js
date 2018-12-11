// JS Promise.prototype.catch()

console.log("alias x='node 20181211_Tuesday/20181211.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/catch

// The catch() method returns a 'Promise' and deals with rejected cases only.
// It behaves the same as calling `Promise.prototype.then(undefined, onRejected)`
// (in fact, calling obj.catch(onRejected) internally calls obj.then(undefined, onRejected)).
// This means, that you have to provide onRejected funciton even if you want to fallback
// to  `undefined ` result value - foe example obj.catch(()=>{}).

var promise = new Promise((resolve,reject)=>{
    throw 'Uh-oh!';
});

promise.catch(e=>console.log(e));