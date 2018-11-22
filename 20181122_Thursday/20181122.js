// JS Computed object property names and destructuring.
console.log("alias x='node 20181122_Thursday/20181122.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment#Computed_object_property_names_and_destructuring

let key = 'z';
let {[key]: new_var} = {z: 'yes'};
console.log(new_var); // yes