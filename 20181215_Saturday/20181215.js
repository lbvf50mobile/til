// JS Promise.prototype.catch(): Gotchas when throwing errors;

console.log("alias x='node 20181215_Saturday/20181215.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/catch#Gotchas_when_throwing_errors
// Gotchas when throwing errors.

// Thowing an error will call the catch method mos of the time
var p1 = new Promise((resolve, reject) => { throw "This is an error!"});

p1.catch(e => console.log(e)); // "This is an error!"

// Errors thrown inside asynchronous functions will act like ancaught errors.

var p2 = new Promise((resolve, reject)=>{
    setTimeout(() => {
        throw 'Uncaught Exception!';
    }, 1000)
});

p2.catch(e =>{
    console.log(e); // this is never called
});

// Errors thrown after resolve is called will be silenced
var p3 = new Promise((resolve,reject) =>{
    resolve("this is resolved");
    console.log("Before Silenced Exception!");
    throw 'Silenced Exception!';
    console.log("After Silenced Exception!");
});

p3.then(x => console.log(x))
.catch(e=>{
    console.log(e); // This is never called;
});