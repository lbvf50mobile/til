console.log("alias x='node 20190420_Saturday/20190420.js'");

// JS wide usage of Array.prototype.splice().

// The splice() method chnages teh contents of an array by removing
// or replacing existing elements and/or adding new elemetns

let month = ['Jan', "March", "April", "June"];
console.log(month)
month.splice(1,0,"Feb");
console.log(month)
month.splice(4,1,'May');
console.log(month)
month.splice(5,0,"June")
console.log(month)
month.splice(6,2,"July")
console.log(month)
