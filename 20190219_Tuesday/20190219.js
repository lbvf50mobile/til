console.log("alias x='node 20190219_Tuesday/20190219.js'");

// JS await

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