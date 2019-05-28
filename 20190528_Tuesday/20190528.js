console.log("alias x='node 20190528_Tuesday/20190528.js'");

// JS Function.prototype.call.bind(Array.prototype.some);

var any = Function.prototype.call.bind(Array.prototype.some);

console.log(any([1,2,3],x => x == 2));

// The bind() , method creates a new function that, when called, has  it's 
// this keyword set to the porived value, with a given sequence of arguments preceding
// any provided when the new function is caleld.

var any1 = (...a) => Array.prototype.some.call(a[0],a[1]);
console.log(any1([1,2,3],x => x == 2));

Array.prototype.middle_funct = function(x){ return this.some(x)};
var any2 = (...a) => Array.prototype.middle_funct.call(a[0],a[1]);
console.log(any2([1,2,3],x => x == 2));

var any3 = Function.prototype.call.bind(Array.prototype.middle_funct)
console.log(any3([1,2,3],x => x == 2));
