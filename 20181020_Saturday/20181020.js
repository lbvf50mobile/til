// JS Promise Race.

console.log("alias x='node 20181020_Saturday/20181020.js'")

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/race

arr = []
for (let i=0; i < 2; i++){
    arr[i] = new Promise( (ok,fail) => {
        console.log(`Add guy ${i}`)
        setTimeout((x)=> {Math.random() > 0.5 ? ok(x) : fail(x)}, Math.random() * 1000 + 100, i)

    });

};
console.log(arr)
Promise.race(arr).then(x=>console.log(`${x} is a winner`)).catch(()=>console.log("no winners"))