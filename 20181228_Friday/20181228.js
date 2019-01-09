// JS Using promises >> Timing;
console.log("alias x='node 20181228_Friday/20181228.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises#Timing

// Timing

// To avoid surpirses, function passed to then() will never be called synchronously,
// even with an already resolved promise:

Promise.resolve().then(()=>console.log("2 first"));
console.log("1 first"); // 1, 2

// Instead or runnin immediately, the passed-in function is put on
// a microtask queue, which means it runs later when the queue
// is emptied at the end of the current run of the JavaScript
// event loop, i.e. pretty soon:

const wait = ms => new Promise(resolve => setTimeout(resolve,ms));
wait().then(()=>console.log(4));

Promise.resolve().then(()=>console.log("2 second")).then(()=>console.log(3));
console.log("1 second"); // 1, 2, 3, 4
