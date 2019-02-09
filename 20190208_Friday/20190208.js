console.log("alias x='node 20190208_Friday/20190208.js'");

// JS Async function >> Simple example.

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
    console.log(await fast); // wait fo slow to finish, even thought fast is already done!
}

sequentialStart();
concurrentStart();
