// Ruby zip(cycle) JS fromCharCode and ... splat operator.

console.log("alias x='node 20190115_Tuesday/20190115.js'");

// https://www.codewars.com/kata/digital-cypher-vol-2/javascript
function decode  (code, n) {
    k = String(n);
    return String
    .fromCharCode(...code.map((x,i) => x - k[i%k.length]+ 96))
}

console.log(decode([ 14, 10, 22, 29, 6, 27, 19, 18, 6, 12, 8],1939));