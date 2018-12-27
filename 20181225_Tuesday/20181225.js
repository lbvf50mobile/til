// JS Using promises >> Error Propagation
console.log("alias x='node 20181225_Tuesday/20181225.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises#Error_propagation
// Erro Propagation

// you migth reacall seening failure callback three times in the pyramin of doom eariler.
// copmapred to only once a the end of the promise chaion.

let doSomething = x =>{
   return  new Promise((resolve,reject) =>{
        if(0.1 > Math.random()){
            reject(x+1);
        }else{
            resolve(x+1);
        }
    }
    );
}
let failureCallback = x => console.log(`${x} = error`);
let doSomethingEalse = doSomething;
let doThirdThing = doSomething;

doSomething(0)
.then(r => doSomethingEalse(r))
.then(r => doThirdThing(r))
.then(f => console.log(`Final result: ${f}`))
.catch(failureCallback)

// Basically, a promise chain stopsif there's an exceptions,
// Looking down the chain for catch handlers instead, this is
// very much modeletd after how synchronuse code works:
let syncDoSomething = x =>{
    if(0.1 > Math.random()){
        throw new Error("Boom" + (x+1))
    }
    return x + 1
};
let syncDoSomethingElse = syncDoSomething;
let syncDoThirdThing = syncDoSomething;
let syncFailureCallback = e => console.log(e.message);

try {
    let r = syncDoSomething(0);
    let r1 = syncDoSomethingElse(r);
    let r2 = syncDoThirdThing(r1);
    console.log(`Got the final result: ${r2}`);
    
}catch(e){
    syncFailureCallback(e)
}

// This symmetry with asynchonous code culmanates in the
// asycn/await syntactic sugar in ECMAScript 2017

async function foo(){
    try{
        let r1 = await doSomething(9);
        let r2 = await doSomethingEalse(r1);
        let r3 = await doThirdThing(r2);
        console.log(`Got the final result: ${r3}`);

    }catch (error){
        failureCallback(error)
    }
}
foo();

// It boild on pmorises, e.g. doSomething() is the same function
// as before. you ca read more about the syntax.

// Prommises solve a fundamental flaw with the callback pyramid of doom
// by catching all errors, even thrown exceptions and programming erros.
// This is essential for functional composition of asynchronous operations.