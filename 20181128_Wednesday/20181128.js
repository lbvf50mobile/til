// JS Promise Basic Example;

console.log("alias x='node 20181128_Wednesday/20181128.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise#Basic_Example

let myFirstPromise = new Promise((resolve, reject)=>{
    // we call resolve(...) when we were doing asynchonosly was succesfull,
    // and reject(...) when it failed.
    // In this example, we use setTimeout(...) to sumulate asyc code.
    // In reality, you will probably be usin something like XHR or an HTML5 API
    setTimeout(()=>{
        resolve("Success!"); // Yay! Everithing went well! 
    }, 250);
});

myFirstPromise.then((successMessage)=>{
    // successMessage is whatever we passed in the resolve(...) function above.
    // It dosen't have to me a string, but if it is only a succeed message, it probably will be.
    console.log(`Yay! ${successMessage}`)
});