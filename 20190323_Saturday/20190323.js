console.log("alias x='node 20190323_Saturday/20190323.js'");

// JS String.prototype.replace() use function.

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/replace

let v = "Capitilize consonant".replace(/[^aeiou]/g, x => x.toUpperCase());
console.log(v)
