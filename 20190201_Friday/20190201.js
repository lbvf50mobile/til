console.log("alias x='node 20190201_Friday/20190201.js'");

// JS Using Promises >> Common mistakes;

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises#Common_mistakes


const f = x => {
    if (x === undefined || x === null){
        console.log("Start Chain");
        return Promise.resolve(1);
    }else{
        console.log(`this is ${x}`);
        return Promise.resolve(x+1);
    }
    
};
let [doSomething, doSomethingElse, doThirdThing, doFourthThing] = [f,f,f,f];
console.log(doSomething)
f("tesing").then(r=>console.log(r));


// Common mistakes.

// Here are some common mistakes to watch out for when compossing promise chains.
// Several of these mistakes manifest int the following example:

// BAD Example! Spot 3 mistakes!

doSomething("Bad").then(function(result){
    doSomethingElse(result) // Forgo to return promise from inner chain  + unnecessary nesting
    .then(newResult => doThirdThing(newResult));
}).then(() => doFourthThing());
// Forgot to terminate chain with a catch!

// The frist mistake is to not chain things togeterh properly.
// this happens when we create a new promise bu forget to return it.
// As a consequence, the chain is borken, or rather, we have two
// independent chains racing.
// this means `doFourthing()` won't wait for 
// `doSomethingElse() or `doThirdTing()` to finish, and will run
// in parallel with them, likely unitended. Separate chains also have separate
// error handlin, leadin gouncaught errors.

// the second mistake is to nest unnecessarily, enabling the first mistke.
// Nesting also limits the scope of inner error handlers, which  - if unintended -
// can lad to uncaught errors.
// A variat of this is the promise constructor anti-patters, whick combines nesting with
// redundant use of promise constructor to wrap code that already use porimises.

 // the third mistake is forgetting to terminate chains with `catch`. Untermintaed pormise
 // chins lead to uncaught pormise rejection in most browsers.

 // A good rule-of-thum is to always eirther return or termiate promise chain,
 // ans as soon as you get a new promise, retturn it immediately, to flattn things:

doSomething("Good")
    .then(function(result){
        return doSomethingElse(result);
    })
    .then(newResult => doThirdThing(newResult))
    .then(()=>doFourthThing())
    .catch(error => console.log(error));

// Note that `() => x` is short for `()=>{return x;}`

// now we have a single deterministic chain with proper error hanling.


// Using asyc/await addresses most, if no all of these porblems - the tradof being
// the the most commin mistake with that syntax is forgetting the await keyword.




