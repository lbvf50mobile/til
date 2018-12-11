// JS Promise: In onFulfilled return a promise, the return value of 'then' will be resolver/rejected by the promise.

console.log("alias x='node 20181210_Monday/20181210.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/then#Chaining

resolveLater = (resolve,reject) =>{
    setTimeout(()=>resolve(10),1000);
};

rejectLater = (resolve,reject) => {
    setTimeout(()=>reject(new Error('Error')), 1000);
};

var p1 = Promise.resolve('foo');
var p2 = p1.then(()=>{
    // Return promise here, that will be resolved to 10 after 1 second
    return new Promise(resolveLater);
});
p2.then((v)=>{
    console.log('resolved',v); // "resolved", 10
},(e)=>{
    //not called
    console.log('rejected',e);
});

var p3 = p1.then(()=>{
    // Return promise here, that will be rejected with 'Error' after 1 second
    return new Promise(rejectLater);
});
p3.then(v=>{
    // not called
    console.log("resolved",v);
},e =>{
    console.log("rejected", e); // "rejected", 'Error'
});
