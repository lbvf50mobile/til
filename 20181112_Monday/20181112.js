// JS ASI (Automatic semicolon insertion).

console.log("alias x='node 20181112_Monday/20181112.js'")

// https://stackoverflow.com/a/2846298/8574922
let {a,b} = {a:'a1',b:'b2'};
console.log(a,b); // Important semicolon

({a,b} = {a:'a11',b:'b12'});
console.log(a,b)