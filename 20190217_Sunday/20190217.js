console.log("alias x='node 20190217_Sunday/20190217.js'");

// JS async_function >> Rewriting a promise chain with an async function;


// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function

// Rewriting a promose chain with an async function

// An API that returns a Pormise will result in a promise chain, and it splits the function
// into may parts. consider the following code.

const downloadData = u => new Promise((resolve,reject) =>{
    if(0.5 > Math.random()){
        resolve(`ok ${u}`);
    }else{
        reject(`fail ${u}`);
    }
});

const downloadFallbackData = u => console.log(`downloadFallbackData  ${u}`);
const processDataInWorker = v => console.log(`processDataInWorker  ${v}`);

function getProcessedData(url){
    return downloadData(url) // return a promise
    .catch (e => {
        return downloadFallbackData(url); // returns a promise
    }).then( v =>{
        return processDataInWorker(v);
    })
};

getProcessedData("www.test.com");