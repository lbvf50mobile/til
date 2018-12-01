// JS Promises Chaining;

console.log("alias x='node 20181201_Saturday/20181201.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/then#Chaining
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises

// the `then` method return a Promise whick allows for method chaining.

// If the function passed as handler to `then` retuns a `Promice`, an
// equivalent `Promise` will be xposed to the subsequent `then` in the method chain.
// The below snippet simultest asynchronous code with the setTimeout function.

Promise.resolve('foo')
// 1. Receive "foo", concatenate "bar" ot it, and resolve that to the next then
    .then(s=>{
        return new Promise((ok,error)=>{
            setTimeout(()=>{
                s += "bar";
                ok(s)
            },1);
        });
    })
// 2. recieve "foobar", register a callback functin to work on that string
// and print it to the console, but not before returning the unworked on
// string to the next then
.then(s=>{
    setTimeout(()=>{
        s += "baz";
        console.log(`center ${s}`);
    });
    return `${s}=added-in-2=`;
})
// 3. print helpful messages about the code in this section will be run
// before the string is actually processed by the mocked asynchronous code in the
// previous the block.
.then(s=>{
    console.log("Last Then: oops.. didn't bother to instaniate and return " + 
    "a promise in the prior then so the sequence may be a bit " + 
    "surprising");
    // Note the `string` will not have the 'baz' bit of it at this poing. This
    // is because we mocked that to happen asynchronously with a setTimeout function
    console.log(s)

});
