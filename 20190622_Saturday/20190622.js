console.log("alias x='node 20190622_Saturday/20190622.js'");

// JS Negative lookahead assertion /x(?!y)/;

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions/Assertions

console.log(/\d+(?!\.)/g.exec('3.141'));