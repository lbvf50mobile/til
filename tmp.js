// Spread operator split string in functions.
// Spread operator have low priority than +;
x1 = x => Math.max(...[...x.toString()]);
x2 = x => Math.max(...x.toString());
x3 = x => Math.max(...x+'');
console.log(x1(10),x2(10),x3(10));