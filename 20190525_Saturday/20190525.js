console.log("alias x='node 20190525_Saturday/20190525.js'");

// JS Sort using logical OR (a.size - b.size|| b.index - a.index) to sort by two positions, first size ascending, second index descending.

a = ['one',"seven",'two', 'eleven',"ten10"];
b = a.map((x,i)=>new Object({size: x.length, value: x, index: i}))
    .sort((a,b) => a.size - b.size || b.index - a.index).map( x => x.value);
console.log("Sort using logical OR (a.size - b.size|| b.index - a.index):");
console.log(a);
console.log(b);
