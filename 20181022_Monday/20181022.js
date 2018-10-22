// JS basic Promise

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise

console.log("alias x='node 20181022_Monday/20181022.js'")

let notok = new Promise((ok,fail)=>fail("It's fails"));
let ok = new Promise((ok,fail) => ok("It's ok"))

notok.then(x=>console.log(x)).catch(x=>console.log(x))
ok.then(console.log).catch(console.log)