console.log("alias x='node 20190615_Saturday/20190615.js'");

// JS \B(?=(\d{3})+(?!\d))

// https://www.codewars.com/users/wizgeeky
// https://regex101.com/r/fqoV22/1
function groupByCommas(n) {
    return n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  }

console.log(groupByCommas(12000))
