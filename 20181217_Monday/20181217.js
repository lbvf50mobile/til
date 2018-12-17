// JS Promise.prototype.catch(): If it is resolved;
console.log("alias x='node 20181217_Monday/20181217.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/catch#If_it_is_resolved
// It if is resolved
var p1 = Promise.resolve("calling next");

var p2 = p1.catch((reason)=>{
    // This is never called
    console.log("catch p1!");
    console.log(reason);
});

p2.then((value)=>{
    console.log("next promise's onFulfilled"); // next promise's onFulfilled
    console.log(value)
},(reason)=>{
    console.log("next promis's onRejecteted");
    console.log(reason)
});