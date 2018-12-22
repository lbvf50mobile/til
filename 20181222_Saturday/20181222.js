// JS Using promises >> Chaining
console.log("alias x='node 20181222_Saturday/20181222.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises
// Chaining

// A common need id to execute to more asynchronus operations back to back,
// where each subsequent operion starts when the previous opertion succeeds,
// this the reult of the previous step.
// We accomplich this by creting a promise chain.

// Here's the magic: the 'then()' function retuns a new promise, different from the ogiginal

const doSomething = () =>{
    return new Promise((resolve,reject) =>{
        if (0.5 <= 0.7) { //Math.random()){
            resolve("Promise is Resolved");
        }else{
            reject("Promise is rejected;")
        }

    });
};
const successCallback = x =>{
    console.log("Successfull callback: ", x);
    return doSomething();
};
const failureCallback = x =>{
    console.log("Reject calback: ", x);
    return doSomething();
};

const successCallbackNoPromise = x =>{
    console.log("Successfull callback: ", x);
};
const failureCallbackNoPromise = x =>{
    console.log("Reject calback: ", x);
};


const promise = doSomething();
const promise2 = promise.then(successCallback,failureCallback);
const promise3 = doSomething().then(successCallback,failureCallback);
promise3.then(successCallbackNoPromise,failureCallbackNoPromise);

// This second promise (promise2) represetns the completion not judt of doSomething,
// but also of the successCalback or failureCallback you passed in, which can be other
// asynchonous funtions returning a promise. When that's the case, any callbacks added
// the promise2 get qureued behid the promise returned by eigher successCallback or failureCallback.

// Basically, each promise represents the completion of another asynchronous step in the chain.

// In the old days, doing several asynchonous operation in a row would lead to the classic
// callback pyramid of doom:

const  doSomething0 = (resolve, reject) => {
    if (0.5 <= 0.7) { //Math.random()){
        resolve("Okay");
    }else{
        reject("Deny")
    }
};

const doSomething1 = doSomething0;
const doSomethingElse1 = doSomething0;
const doThirdThing1 = doSomething0;

doSomething1(function(result){
    console.log(result);
    doSomethingElse1(function(result1){
        console.log(result + result1);
        doThirdThing1(function(result2){
            console.log("Got the Final result: " + result + result1 + result2)
        },failureCallbackNoPromise);
    },failureCallbackNoPromise);
},failureCallbackNoPromise);

// With modern function, we attach our callbacks to the returned promises instead,
// forming a promise chain:

const doSomething2 = x =>{
    return new Promise((resolve,reject) =>{
        if (0.2 <= Math.random()){
            resolve(`${x} Promise is resolved`);
        }else{
            reject(`${x} Promise is rejected;`)
        }
    });
};
const doSomethingElse2 = doSomething2;
const doThirdThing2 = doSomething2;

doSomething2().then(function(result){
    console.log(result);
    return doSomethingElse2(2);
}).then(function(newResult){
    console.log(newResult);
    return doThirdThing2(3);
}).then(function(finalResult){
    console.log(`Got the final result: ${finalResult}`);
}).catch(failureCallbackNoPromise);

// The argumeht to then are optionsl, and catch(failureCallback) is short for then(null,failureCallback).
// You might see this expression with arrow functions instead;

const doSomething3 = x =>{
    return new Promise((resolve,reject) =>{
        if (0.2 <= 10 ){//Math.random()){
            console.log(x, '[short]');
            resolve(x+1);
        }else{
            reject(x+1)
        }
    });
};
const doSomethingElse3 = doSomething3;
const doThirdThing3 = doSomething3;

doSomething3(0)
.then(r => doSomethingElse3(r))
.then(r => doThirdThing3(r))
.then(r => console.log(`[short] Got the final result: ${r}`))
.catch(failureCallbackNoPromise);

// Importatn: Always return results, otherwise callbacks wont' cantch the result of a previous
// promise (with arrow funcitons `() => x` is short for `() => {return x;}`)

