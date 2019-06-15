console.log("alias x='node 20190615_Saturday/20190615.js'");

// JS \B(?=(\d{3})+(?!\d))

// https://www.codewars.com/users/wizgeeky
// https://regex101.com/r/fqoV22
// https://www.stefanjudis.com/today-i-learned/the-complicated-syntax-of-lookaheads-in-javascript-regular-expressions/
// https://regex101.com/r/YtwjA9/1
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Boundaries
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Assertions
function groupByCommas(n) {
    return n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  }

console.log(groupByCommas(12000))
