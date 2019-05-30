console.log("alias x='node 20190530_Thursday/20190530.js'");
// JS Spread operator in Objects. (docs Spread in Object Literals)

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax#Spread_in_object_literals
z = {first: 1, ...(true ? {second:2} : {})};
console.log(z,"JS Spread operator in Objects.")
