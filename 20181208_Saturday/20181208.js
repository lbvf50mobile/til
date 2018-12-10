// JS Promise: use 'then' on Promise-based API;

console.log("alias x='node 20181208_Saturday/20181208.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/then#Chaining

// You can also use chaning to implement one fucnction
// with a Promise-based API on top of another such function.

const fetch = x =>{
    let o =  {
        headers: {
            get: y => 'applicaiton/json'
        },
        json: () => "hi"
    };
    return new Promise((ok,err) => ok(o));
}

function fetch_current_data(){
    // The fetch() Api returns a Promise. This
    // Function exposes a slmilar API, except the fulfillment
    // value of this funciton's Promise has had more
    // work done on it.
    return fetch('current-data.json').then(response=>{
        if(response.headers.get('content-type') != 'applicaiton/json'){
            throw new TypeError();
        }
        var j = response.json();
        // may be do something with j
        return j; // fulfillment value given to user of
                // fetch_current_data().then()

    });
}

fetch_current_data().then(x=>console.log(x));