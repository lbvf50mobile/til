// JS Using promises

console.log("alias x='node 20181219_Wednesday/20181219.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises

// A Promise is an object representing the eventual completion or failure
// of an asynchronous operation. Since most people are consumer of already-created
// promises, this guide will exmpain consumption of returend promieses before e
// explainin how to create them.

// Essentially, a promise is a returned object to which you attach callbacks,
// instead of passing callbacks into a function.

// Imagine a function, 'createAudioFileAsync()', which asynchorously generates a sound
// file given a configuration record and two callback functions, now called if the
// audion file is successfully ceated, and the other called if  an error occurs.

// Here's some code that uses 'createAudioFileAsync()';

let successCallback = result => console.log("Audio file ready at URL: " + result);
let failureCallback = error => console.log("Error Generation auio file: " + error);


let createAudioFileAsync_old = (setObj, ok, err) => {
 var {name: name} = setObj;
 if( 0.5 > Math.random()){
    ok(name);
 }else{
    err(name)
 }
};

createAudioFileAsync_old({name: "good song"}, successCallback, failureCallback);

// ... modern functin return a promise you can attach to your callbacks to instead
// if createAudioFileAsync() werer rewritten to return a promise, using it could ba as
// simple as this:

let createAudioFileAsync = ({name}) => {
    return new Promise((resolve,reject)=>{
        if(0.5 > Math.random()){
            resolve(name);
        }else{
            reject(name);
        }
    });
};

createAudioFileAsync({name: "Super cool song"}).then(successCallback,failureCallback);

// That's shorthand for:

const promise = createAudioFileAsync({name: "Yes, this one more good song"});
promise.then(successCallback,failureCallback);

// We call this an asynchronous function call.
// this convention has several advantages.
// We will explore each one.