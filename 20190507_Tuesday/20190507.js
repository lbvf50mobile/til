console.log("alias x='node 20190507_Tuesday/20190507.js'");

// JS syntax  15 == [15,2][1,0]; [Comma operator, Property accessors: Bracket notation, Dot notation]

console.log('15 == [15,2][1,0]',15 == [15,2][1,0]);

let sum = 0
[1,2,3];
console.log('sum == undefined',sum == undefined);

// comma operator
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comma_Operator
console.log('1,2,3 == 3',1,2,3 == 3);
// Property Accessors
// Bracket notation
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Property_accessors#Bracket_notation
console.log('0[1,2,3] == 0[3]',0[1,2,3] == 0[3]);
console.log('undefined == 0[1]', undefined == 0[1]);
// Dot notation
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Property_accessors#Dot_notation
console.log(0[1,2,3,'constructor'])
console.log(0[1,'constructor'])
console.log(0..constructor)
console.log((0).constructor)
