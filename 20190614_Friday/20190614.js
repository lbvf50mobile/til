console.log("alias x='node 20190614_Friday/20190614.js'");

// JS Object.entries(), (for...in), (for...of);

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/entries
// The Object.entries() method retuns an array of a given object's
// own enumerable string-keyes propersty [key, value] paist, the the
// same order as that provided by a for...in loop
// (the difference being that a for-n loop enumerates properties in
// the prototype chain as well)


// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...in
// The for...in statements interates over all non-Symbol, enumerable properies of an object.

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...of
// The for...of statement reates a loop itaratin over itrable objects, including
// build in String, Array, Array-line objects (e.g., arguments or Nodelist),
// TypedArray, Map, Set, and user-defined iterables. It invokes a custom iteration hook with
// statements to executed for the value of each distinct property of the object.


a = {a:1, b: 2}
console.log( " An a object:")
console.log("for..in")
for ( x in a) console.log(x);
console.log('Object.entries()')
for( let [name,value] of Object.entries(a)) console.log(`${name} => ${value}`);

console.log(" An zi object:")
ancestor = {a_prot: 1, b_prot: 2}
z = function(){ this.c_own = 2 }
z.prototype = ancestor
zi = new z();
console.log("for...in")
for (x in zi) console.log(x);
console.log('Object.entries()');
for(let [name,value] of Object.entries(zi)) console.log(`${name} => ${value}`);

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#With_a_generator
console.log('for...of with a Generator:')
function* foo(){
    yield 1;
    yield 2;
  }
  
  for (let o of foo()) console.log(o);
