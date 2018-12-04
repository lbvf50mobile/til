// JS Promise 'then' 'throw' 'newError';

console.log("alias x='node 20181204_Tuesday/20181204.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/then#Chaining

// A "than" call will return a rejected promise 
// if the function trhows an error or returns a rejected Promise.

Promise.resolve()
.then(()=>{
    throw new Error('Error Description');
}).then(()=>console.log('not called'), error=>{
    console.log("onRejected function called: " + error.message);
});