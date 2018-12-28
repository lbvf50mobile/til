// JS Using Promises >> Creating a Promise around an old callack API
console.log("alias x='node 20181226_Wednesday/20181226.js'");
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises#Creating_a_Promise_around_an_old_callback_API

// Creating a Promise around an old callback API
// A Promise can be carete dfrom scratch using its consturcotr. This should be 
// Needed only to wrap old API's.

// In an idal world, all asynchronous functions would already return promises. Alas, some 
// APIs still expect success and/ro failure callbacks to be passed in the old way.
// The quintessential example is the setTimeout() function;

let saySomething1 = x => {
    if(0.7 > Math.random()) {
        throw new Error("This is erorr in SaySometing");
    }
    console.log(`${x} : say someting1`);
}

let saySomething = x => {
    console.log(`${x} : say someting1`);
}
setTimeout(()=>saySomething("2 seconds passed"),2);


// Mixing old-style callbacks and promises is problematic. if saySomething() fails
// or contains a programming error, nothing catches it. setTimeout is ot blame for this.

// Luckily we can wrap setTimeout in a promise. Best prictice is to wrap problemtatic
// functions at the lowest possible level, and then never call them direclty again:

let failureCallback = x => console.log(`${x.message} this is failureCallback`);
let wait = ms => new Promise(resolve => setTimeout(resolve,ms));
wait(2).then(()=>saySomething1("This is in then")).catch(failureCallback);


// Basically, the promise constructore takes an executor function that lets us
// resolve or reject a promise manually. Since setTimoout() doesn't really fail,
// we left out reject in this case.
