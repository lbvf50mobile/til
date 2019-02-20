console.log("alias x='node 20190219_Tuesday/20190219.js'");

// JS await.

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/await

// The awain operator is used to wait for a Promise. It can only be used inside an async function.

// Syntax

// [rv] = await expression;

// expression
// A promise or any value to wait for.

// rv
// Retuns the fulfilled value of the promse. or the value it's no a Promise.

// Description

// The await expression causes async function execution to pause untill a Promise resolved,
// that is fulfilled or rejected, and to resume execution of the async function after ulfillment.

// If the Promise is rejected, the awiat expression trhows the rejected value

// If the value of the expression followin the awain opreaotr is not a Pormise. It's conferted to a resolved Promise.

// Examples

// If a promise is passed to an awain expression, it waits fo the Promise to be fulfilled and returns the fulfilled value.

function resolveAfter2Seconds(x){
    return new Promise(r => {
        setTimeout(()=>{
            r(x);
        },2000)}
        );
}

async function f1(){
    var  x = await resolveAfter2Seconds("Value in promise");
    console.log(x)
}

f1();

// If the value is not a Promise. It converts the value to a resoved pormise, and waits for it.

async function f2(){
    var y = await 20;
    console.log(y); // 20
}

f2();