console.log("alias x='node 20190617_Monday/20190617.js'");

// JS Boundaries.
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Boundaries


//  Matches beginning of input.

let fruits = ["Apple", "Watermelon", "Orange", "Avocado", "Strawberry"];

// Select fruits started with 'A' by /^A/ Regex.
// Here '^' control symbol used only in one role: Mathcing begining of an input. 
let fruitsStartsWithA = fruits.filter(fruit => /^A/.test(fruit));
console.log(fruitsStartsWithA); // [ 'Apple', 'Avocado' ]

// Selecting fruits that dose not started by 'A' by a /^[^A]/ regex. 
// In this example two meaning of '^' control symbol represented:
// 1) Matcinhg begining of the input 
// 2) A negated or complemented character set:  [^A]
// That is, it matches anything that is not enclosed in the brackets.
let fruitsStartsWithNotA = fruits.filter(fruit => /^[^A]/.test(fruit));
console.log(fruitsStartsWithNotA); // [ 'Watermelon', 'Orange', 'Strawberry' ]

let fruitsWithDescription = ["Red apple", "Orange orange", "Green Avocado"];

// Select descriptions that contains 'en' or 'ed' works endings
let enEdSelection = fruitsWithDescription.filter(descr => /(en|ed)\b/.test(descr));

console.log(enEdSelection); // [ 'Red apple', 'Green Avocado' ]
