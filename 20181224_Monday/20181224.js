
console.log("alias x='node 20181224_Monday/20181224.js'");
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises#Chaining_after_a_catch

// Chaining after a catch

// It's possible to chain after a failure, i.e. a catch, with is usefull to accomplish
// ne actions even after an action failed in the chain. Read the following example

new Promise((resolve,reject)=>{
    console.log('Initial');
    resolve();
}).then(()=>{
    throw new Error("Something failed");
    console.log("Do this");
})
.catch((x)=> console.log("Do that", x.message))
.then(() => console.log('Do this, no matter what happened before'));

// this will opuput the following text:
// Initial
// Do that Something failed
// Do this, no matter what happened before

// Not. The text "Do this" is not displayed bacause the "Something failed"
// error caused a rejection.
