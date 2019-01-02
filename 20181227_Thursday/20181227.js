// JS Using Promises >> Composition.
console.log("alias x='node 20181227_Thursday/20181227.js'");
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises#Composition

// Compositions

// Promise.resolve() and Promise.reject() are shotcuts to manually
// creat an already resolved or rejected promise respectively. This can be useful at
// times.

// We can start operations in parallel and wait for them all to fhinish like this:
let func1 = () => new Promise((resolve) => setTimeout(()=>resolve("10 ms"),10));
let func2 = () => new Promise((resolve) => setTimeout(()=>resolve("20 ms"),20));
let func3 = () => new Promise((resolve) => setTimeout(()=>resolve("30 ms"),30));

Promise.all([func1(),func2(),func3()])
.then(([r1, r2, r3]) => console.log(r1,r2,r3));

// Sequential composition is possible using some clever JavaScript:
[func1, func2, func3].reduce(
    (p,f) => p.then(f),
    Promise.resolve()
).then(r3=>console.log(r3));

// Basically, we reduce an arry of asynchronus functions down to a promise chain
// equivalent to:


Promise.resolve()
.then(func1)
.then(func2)
.then(func3)
.then(r3=>console.log(r3));

// This can be made into a reusable compose function, which is common
// in functional programming

const applyAsync = (acc,val) => acc.then(val);
const complseAsync = (...functs) => x => functs.reduce(applyAsync,Promise.resolve(x));

// The composeAsync() function will accept any number of functions as arguments,
// and will return a new function that accepts an initial value to be passed though the 
// compositoin pipeline:
const transfomData = complseAsync(func1,func2,func3);
const r3 = transfomData("travel input");
r3.then(x => console.log(x));