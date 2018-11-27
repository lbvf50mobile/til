// JavaScript Demo: Promise Constructor.

console.log("alias x='node 20181127_Tuesday/20181127.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise

var promise1 = new Promise((resolve, reject)=>{
    setTimeout(()=>{resolve('foo');},300)
});

promise1.then((value)=>console.log(value)); // 'foo'
console.log(promise1); // expected output: [object Promise]