// JS Using promises >> Timing;
console.log("alias x='node 20181228_Friday/20181228.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises#Timing

// Timing

// To avoid surpirses, function passed to then() will never be called synchronously,
// even with an already resolved promise:

Promise.resolve().then(()=>console.log(2));
console.log(1); // 1, 2