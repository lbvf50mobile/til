console.log("alias x='node 20190422_Monday/20190422.js'");

// JS flatten using concat and rest prarmeter, and rest parameter in splice.

let a = [[1,2],[3,4]]
console.log("this is array:", a);
console.log("Flatten using [].concat(...a):",[].concat(...a));
let x = [1,2]
x.splice(2,0,...[3,4,5])
console.log(x);
