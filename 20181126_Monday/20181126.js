// JS Invalid JavaScript identifier as a property name.
console.log("alias x='node 20181126_Monday/20181126.js'");

/*
Destructuring can be used with property names thaa are not valid JavaScript identifiers 
by providing an alternative identifer that is valid.
*/

const boom = {'this-cannot-be-a-var': "hey!","123-2": "this is great"};
const {'this-cannot-be-a-var': this_can_be_a_var} = boom;
const {"123-2": good} = boom;
console.log(this_can_be_a_var);
console.log(good);
