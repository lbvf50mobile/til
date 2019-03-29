console.log("alias x='node 20190328_Thursday/20190328.js'");

// JS Array.porotoype.copyWithin();

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/copyWithin

// The copyWithin methos shallow copies part of an aray to another
// location in the same array and returns it, withou modifing its size

let array1 = ['a', 'b', 'c', 'd', 'e'];
// copy to index 0 the element a the index 3
console.log(array1.copyWithin(0,3,4));
// expected output: Array ['d', 'b', 'c', 'd', 'e']

// copy to index 1 all elements from index 3 to the end
console.log(array1.copyWithin(1,3));
// expected output: Array ['d', 'd', 'e', 'd', 'e']


// Syntax
// arr.copyWihin(tafget[, start[,end]])

// Parameters

// target
// zero based indax at which to copy the sequence to. If negative, tagget will be counted
// from the end.
// If taret is at or greater then arr.length, nothing will be copied. If targe is positions
// after 'start', the copited sequnece will be trimmed to fit arr.length

// start
// Zero based indax at which to start copying elements from. If negative, start will be 
// counted form the end.
// if start is omitted, copyWining will copy from the start (defaults to 0).

// end | options
// Zeor based index at which to end coping elemetns from. copyWithin copies up to but
// not including end. If negaitve end will be counte fromthe end.

// if end is ommited, copyWithing will copy untinl the end (default to arr.length)
