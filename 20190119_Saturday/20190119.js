console.log("alias x='node 20190119_Saturday/20190119.js'");

// JS Array create and fill;

// Array(3) empty values dose not catch by map
console.log('Array(3) empty values dose not catch by map');
console.log(Array(3));
Array(3).map(x=>console.log(x))
Array(3).forEach(x=>console.log(x));

// Because Map 
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map
// It is not called for missing elements of the array (that is, indexs than have never been set,
// wich have been deleted or wich have never been assigned a value).

// Several ways to fill array with same values
console.log("Several ways to fill array with same values");
console.log("Array(2).fill(5)");
console.log(Array(2).fill(5));
console.log(Array(2).fill(5).map(x=>console.log(x)));
console.log(Array(2).fill(5).forEach(x=>console.log(x)));


console.log("[...Array(2)]");
console.log([...Array(2)]);
console.log([...Array(2)].fill(8).map(x=>console.log(x)));
console.log([...Array(2)].map(x=>8).map(x=>console.log(x)));
console.log([...Array(2)].fill(7).forEach(x=>console.log(x)));

// And reveber about some approaches to JS
console.log("Remember abot some JS ticks");

// Uniq in JS
console.log("Uniq in JS");
console.log([...new Set([5,5,7,7,11,11,11])]);
// One more way to fill the array by fore
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/from#Sequence_generator_(range)
console.log("One more way to fill the array: Sequence Generator (range)");
console.log(Array.from({length: 3}));
// And example of array sort
console.log("And Example of array sort.")
console.log([...Array(21).keys()].sort());

