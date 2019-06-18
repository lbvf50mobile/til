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

// Using Regex boundaries to fix buggy string.
buggyMultiline = `zey, ihe light-greon apple
zangs on ihe greon traa`;

// 1) Use ^ to fix the matching at the begining of the sting, and right after newline.
buggyMultiline = buggyMultiline.replace(/^z/gim,'h'); 
console.log(1, buggyMultiline); // fix 'zey', 'zangs' => 'hey', 'hangs'.

// 2) Use $ to fix mathing at the end of the text.
buggyMultiline = buggyMultiline.replace(/aa$/gim,'ee.'); 
console.log(2, buggyMultiline); // fix  'traa' => 'tree'.

// 3) Use \b to match characters right on border between a word and a space.
buggyMultiline = buggyMultiline.replace(/\bi/gim,'t');
console.log(3, buggyMultiline); // fix  'ihe' but does not touch 'light'.

// 4) Use \B to match characters inside borders of an entity.
fixedMultiline = buggyMultiline.replace(/\Bo/gim,'e');
console.log(4, fixedMultiline); // fix  'greon' but does not touch 'on'.
