// JS Calculate the Max/Min value from an array
console.log("alias x='node 20181123_Friday/20181123.js'");

// https://www.jstips.co/en/javascript/calculate-the-max-min-value-from-an-array/

let a = [1,2,100,3,4,5,6,7,200,8];
console.log(Math.max.apply(null,a)); // 200
console.log(Math.max(...a));