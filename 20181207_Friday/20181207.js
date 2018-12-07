// JS Promise, 'then', 'throw', 'catch', 'then' rather than use 'then's two case syntax.

console.log("alias x='node 20181207_Friday/20181207.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/then#Chaining

// In practice, it is often desireble to catch rejected promises rather than use 
// 'then's tow case syntax, as demonstrated below.

Promise.resolve()
.then(()=>{
    // Makes .then() return a rejected promise
    throw new Error("Oh, no!");
})
.catch(error =>{
    console.log(`onRejected function called: ${error.message}`);
    return 152
}).then( x => {
    console.log("I am always called even if the prior then's promise rejects");
    console.log(`Return: ${x}`)
});