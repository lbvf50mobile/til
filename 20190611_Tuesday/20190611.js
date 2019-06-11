console.log("alias x='node 20190611_Tuesday/20190611.js'");

// JS Regex Capturing Group match reference ()/1.

// https://regex101.com/r/MgERCZ/1
// https://www.codewars.com/users/SgtPooki
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Groups_and_Ranges#Types
// A back reference to the last substring matching the n parenthetical in the regular expression (counting left parentheses).

console.log('bamamambomomom'.match(/b((am)|(om))\1+/g)) // [ 'bamamam', 'bomomom' ]
console.log('bamamambomomom'.match(/b((am)|(om))\2+/g)) // [ 'bamamam', 'bom' ]
console.log('bamamambomomom'.match(/b((am)|(om))\3+/g)) // [ 'bam', 'bomomom' ]

// https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/solutions/javascript
// https://www.codewars.com/users/jacobb
function duplicateCount(text){
    return (text.toLowerCase().split('').sort().join('').match(/([^])\1+/g) || []).length;
  }
