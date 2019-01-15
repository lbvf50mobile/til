// JS Using promises >> Nesting;
console.log("alias x='node 20181229_Saturday/20181229.js'");
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises#Nesting

// Simple promise chain are best kept flat without nesting, as nesting can be a result of 
// lareless composition. See 'common mistakes'.

// Nesting is a control structure to limit the scope of 'catch' statments.
// Specifically a nested 'catch' only catches failures in it's scope and below,
// not error higher up in the chain outside the nested scope
// When used coreclty, this geivwe greater precision in error recomvery:

let doSomethingCritical = () => Promise.resolve("This RESOLVE the doSomethineCritical");
let doSomethingOptional = r => { console.log(`input: ${r}`); return Promise.resolve("This is RESOLVE for OPTIONAL")};
let doSomethingExtraNice = r => {console.log(`Extra nice input: ${r}`); return Promise.reject("This is REJECT for ExtraNice")};
let moreCriticalStuff = () => {
    console.log("This is More critical stuff"); 
    return Math.random() > 0.5 ? Promise.resolve("Critical Done") : Promise.reject("Critical Fails");
};



doSomethingCritical().then( x => doSomethingOptional(x)
    .then( x =>doSomethingExtraNice(x)).catch(e => console.log(e)) // Ignore if optional stuff fails; proceed;
).then(() => moreCriticalStuff())
.then(x => console.log(`Critcal succes: ${x}`))
.catch(e => console.log(`Critical failure: ${e}`));