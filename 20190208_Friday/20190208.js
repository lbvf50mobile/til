console.log("alias x='node 20190208_Friday/20190208.js'");

// JS Async function >> Simple example.

// Syntax

// async function name([param[, param[, ... param]]]) {
// statements
// }

// Parameters
// name The function name.
// param The name of an argument to be passed to the function.
// statements The statements comprising the body of the function.

// Return value
// A Promise which will be resolved with the value returned by the async function,
// or rejected with an uncaught exception thrown from within the async function.

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function#Simple_example

var resolveAfter2Seconds = function(){
    console.log("Strating slow promise");
    return new Promise(
        r => setTimeout(()=>{r(20); console.log("slow promise is done");},2000)
    );
};

var resolveAfter1Second = () =>{
    console.log("Starting fast promise");
    return new Promise(
        r => setTimeout(()=>{r(10); console.log("Fast promise is done");},1000)
    );
};

var sequentialStart = async function(){
    console.log('==SEQUENTIAL START==');
    // If the value of the expression following the awain operator is not a Promise,
    // it's converted to a resolved Promise.
    const slow = await resolveAfter2Seconds();
    const fast = await resolveAfter1Second();
    console.log(slow);
    console.log(fast);


};

var concurrentStart = async function(){
    console.log('==concurrent START with await ==');
    const slow = resolveAfter2Seconds(); // starts timer immediately
    const fast = resolveAfter1Second();

    console.log(await slow);
    console.log(await fast); // wait for slow to finish, even thought fast is already done!
}

var stillConcurrent = function(){
    console.log('==Concurrent STart with Promise.all ==');
    Promise.all([resolveAfter2Seconds(),resolveAfter1Second()]).then((messages) =>{
        console.log(messages[0]); // slow
        console.log(messages[1]); // fast
    })
}

var parallel = function(){
    console.log('==PARALLEL with Promise.then==');
    resolveAfter2Seconds().then(message => console.log(message));
    resolveAfter1Second().then( message => console.log(message));
}

sequentialStart(); // after 2 second, logs "slow", then after 1more second, "FAST"
// wait above to finish
setTimeout(concurrentStart,4000); // after 2 secons, logs "slow" and then "fast"
// wait again
setTimeout(stillConcurrent, 7000); // same as concurrentStart
//
setTimeout(parallel, 10000); // trully parallel; after 1 second logs "fast", then after 1 more
// second, "slow"