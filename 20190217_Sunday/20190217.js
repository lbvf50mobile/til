console.log("alias x='node 20190217_Sunday/20190217.js'");

// JS async_function >> Rewriting a promise chain with an async function;


// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function

// Rewriting a promose chain with an async function

// An API that returns a Pormise will result in a promise chain, and it splits the function
// into may parts. consider the following code.

const downloadData = u => new Promise((resolve,reject) =>{
    if(0.5 > Math.random()){
        console.log("I going resolve.");
        resolve(`ok ${u}`);
    }else{
        console.log("I going reject.");
        reject(`fail ${u}`);
    }
});

const downloadFallbackData = u => {
    console.log(`downloadFallbackData (New)  ${u}`); 

    return new Promise(r =>{ 
        console.log(`this what new promise answer ${u} is done`);
        r(`${u} is done`)
    }); 
};
const processDataInWorker = v => console.log(`processDataInWorker  ${v}`);

function getProcessedData(url){
    return downloadData(url) // return a promise
    .catch(e =>{
        downloadFallbackData(e);
    })
    .then( v =>{
        console.log(`${v} this is  v`)
        return processDataInWorker(v);
    })
};

getProcessedData("www.test.com");

// It can be rewriten with the single ansyc function as follwos:

async function getProcessDataAsync(url){
    let v;
    try{
        v = await downloadData(url);
    }catch(e){
        v = await downloadFallbackData(url);
    }
    return processDataInWorker(v);
}

setTimeout(()=>{console.log("Wait a little bit..");},1000)
setTimeout(()=>{
    console.log("stop waiting");
    getProcessDataAsync("www.async.com")

},2000)
