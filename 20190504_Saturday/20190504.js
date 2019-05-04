console.log("alias x='node 20190504_Saturday/20190504.js'");


// JS Spread syntax(calling), Sort, Rest parameters (defining).

a = [19,2,7,4];


// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax
console.log(Math.min(...a), "Find Min by Spread operator", a);

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort#Description
console.log(a.sort()[0],'Average JS sort elements like strings', a, a.sort())
console.log(a.sort(((a,b) => a-b))[0],'JS sort elements using sort with function', a, a.sort(((a,b) => a-b)))

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/rest_parameters
volume = (...a) => a.reduce((x,y) => x*y, 0);
console.log(volume(2,2,2),"Rest operator in defining function.");
