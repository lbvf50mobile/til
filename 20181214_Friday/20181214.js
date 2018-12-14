// JS Promise.prototype.catch(): Using and chaining the 'catch' method; 

console.log("alias x='node 20181214_Friday/20181214.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/catch#Description

// Descrition
// The catch method can be useful fo error handing in your promise composition.

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/catch#Examples
//  Examples
// Using and chaining the catch method

var p1 = new Promise((resolve, reject) => resolve('Success'));

p1.then(value =>{
    console.log(value); // "Success!"
    throw "error!";
}).catch(e =>{ 
    console.log(e) // "error!"
}).then(()=> console.log("after a catch the chain is resotred"),()=>console.log('Not fired due to the catch'));

// The following behves the save as abouve
p1.then(value =>{
    console.log(value); // "Success!"
    return Promise.reject('error! (1)');
}).catch(e => {
    console.log(e); // "error! (1)"
}).then(
    () =>{
        console.log("after a catch the chain is resotred (1)")
    },
    () =>{
        console.log('Not fired due to the catch (1)');
    }
);
