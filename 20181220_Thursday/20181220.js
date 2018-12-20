// JS Using Promises >> Guarantees;
console.log("alias x='node 20181220_Thursday/20181220.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises#Guarantees
// Guarantees;

// Unlike "old-style", passed-in callbacks, a promise comes with some guarantees;
//  - Callbacsk will never be called before the completion of the current run of JavaScrip event loop
// - callback added with 'then()' even after the success or failure of the asynchronous operation, will be called, as above
// - multiple callbacks may be adde by calling 'then()' several times. Each callback is executed one after another, in the order
// in which they were inserted.

// One of the great things aobut using promises is chaning.