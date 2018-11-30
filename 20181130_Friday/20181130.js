// JS Using the 'then' method
console.log("alias x='node 20181130_Friday/20181130.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/then#Using_the_then_method

let p1 = new Promise((resolve,reject)=>{
    if(Math.random() > 0.5){
        resolve("Success!");
    }else{
        reject("error");
    }
});

p1.then( value => console.log(value), reason => console.log(reason));