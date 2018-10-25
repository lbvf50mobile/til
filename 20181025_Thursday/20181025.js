// JS Async Await (always resolve).

// https://stackoverflow.com/questions/42453683/how-to-reject-in-async-await-syntax
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/async_function

console.log("alias x='node 20181025_Thursday/20181025.js'")

const fifty_fifyt = () => {
    console.log("Call fifty fifty")
    return new Promise((o,f) => setTimeout(()=>{1 == 1 ? o("Resolve") : f("Reject")},500))
};

async function test(){
    let answer = await fifty_fifyt()
    console.log(answer)
}

test()
test()