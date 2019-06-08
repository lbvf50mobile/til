console.log("alias x='node 20190608_Saturday/20190608.js'");

// JS/Ruby [^], and 'g' Regex flag in JS String.prototype.match.

// https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/solutions/javascript
// https://www.codewars.com/users/jacobb
function duplicateCount(text){
    return (text.toLowerCase().split('').sort().join('').match(/([^])\1+/g) || []).length;
  }

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp#Parameters
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/match#Return_value

console.log('8910'.match(/[^]/g), "js /[^]/ equal to /./");
console.log('8910'.match(/./g), "js /[^]/ equal to /./");

console.log('8910'.match(/./), "match different behaviour without 'g' flag");
console.log('8910'.match(/./)['index'], "match different behaviour without 'g' flag");
