//  JS Promise.prototype.catch() Syntax - Return value;
console.log("alias x='node 20181213_Thursday/20181213.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/catch#Syntax

// Syntax

// p.catch(onRejected);
// p.catch(function(reason)){
// // Regection    
//}

// Parameters
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/catch#Parameters
// onRejected
// A Functin called when the 'Promise' is rejected. This functin has one argument:
// reason - The rejection reason.
// The Promise returned by catch() in rejected if onRejected throws an error or returns
// a Promise wihci is itself which is itself rejected; otherwise, it is resolve.

// Return value
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise/catch#Return_value
// Internall calls Promise.prototype.then on the object upon which is called, passing the
// parameters 'undefined' and the 'onRejected' handler recieved; then returns the value of that call
// (which is a Promise)

// The exmaples below a throwing strings. this is considered bad pracice. Always throw an instance of Error.
// Otherwise the part doing the canching would have to make checks to see if
// the argument was a sting or an error. and you might lose, valubale informatoin like stake traces.

// Demonstraion of the internal call:

// overriding original Promise.prototype.then/catch just to add some logs

(
    function(Promise){
        var originalThen = Promise.prototype.then;
        var originalCatch = Promise.prototype.catch;
    
        Promise.prototype.then = function(){
            console.log('>> called .then on %o with arguments: %o', this, arguments);
            return originalThen.apply(this,arguments);
        };
        Promise.prototype.catch = function(){
            console.log('>> called .catch  on %o with argumehts: %o', this, arguments);
            return originalCatch.apply(this, arguments);
        };
    }
)(Promise);

// calling catch on an alredy redolved promise
Promise.resolve().catch(function xxx(a){ console.log(a)});

Promise.reject("Boom").catch(function yyy(a){console.log(a)});