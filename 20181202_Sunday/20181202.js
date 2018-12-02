// JS practice with 'this' in Arrow/Regular functions.

console.log("alias x='node 20181202_Sunday/20181202.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions#Function_expressions

let x = {
    p: 1,
    m: ()=> console.log(`ARROW: The "p" in x is ${this.p}`)
};

x.m(); // 1? undefined

let z = {
    p: 101,
    m: function(){console.log(`NORMAL: The "p" in z is ${this.p}`)}
};
z.m(); // 101