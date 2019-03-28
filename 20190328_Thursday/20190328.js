console.log("alias x='node 20190328_Thursday/20190328.js'");

// JS Array.porotoype.copyWithin();

// The copyWithin methos shallow copies part of an aray to another
// location in the same array and returns it, withou modifing its size

let array1 = ['a', 'b', 'c', 'd', 'e'];
// copy to index 0 the element a the index 3
console.log(array1.copyWithin(0,3,4));

// copy to index 1 all elements from index 3 to the end
console.log(array1.copyWithin(1,3));