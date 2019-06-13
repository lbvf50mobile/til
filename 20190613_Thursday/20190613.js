console.log("alias x='node 20190613_Thursday/20190613.js'");

// JS 'in' and 'delete' operators.

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/in
// The in operator returns true if the specified property is in the specified object or
// it's prototype chain.
var car = {make: 'Honda', Model: 'Accord', year: 1998};
console.log('make' in car); // expected output: true
delete car.make
if('make' in car == false) car.make = 'Suzuki';
console.log(car.make); // expected output: "Suzuki" 
if(0 in [1,2,3]) console.log('Arrays works with \'in\' opertator to.');

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/delete
// The JavaScript delete operator removes a property from an object; if no more
// references to the same property are held, it is eventually released automatically.
var Employee = {firstname: 'John', lastname: "Doe"};
console.log(Employee.firstname); // expected output: "John"
delete Employee.firstname
console.log(Employee.firstname); // expected output: undefined
let arr = [1,2];
delete arr[0];
console.log(arr,"Array works with 'delete' operator too");
delete arr[1];
console.log(arr,"This array must be released? Is't it?")
