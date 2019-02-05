console.log("alias x='node 20190205_Tuesday/20190205.js'");

// JS async function (JavaScript Demo: Statement - Async);

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function

// The async function declaration defines an asynchronus function, which
// returns an AsyncFunction object. An asynchronous function is a function which
// operates asynchronously vie the event loop, using an implicit Promise to return its result.
// But the syntax ans structure of your cde using async function is much more like using
// standard synchronous functions.

// You can also define async functions using an async function expresion.

let resolveAfter2seconds = () => new Promise((resolve,reject) => setTimeout(()=>resolve("ok"),2000));
async function asyncCall(){
    console.log('calling');
    let result = await resolveAfter2seconds();
    console.log(result); // "ok"
}

asyncCall();