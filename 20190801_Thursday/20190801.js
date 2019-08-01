console.log("alias x='node 20190801_Thursday/20190801.js'");

// JS use regex in String.prototype.replace. And the way creae new RegExp, with options as arguments form string.

console.log("using string as replace",  "11111".replace(1,"-replace-"))

console.log('usiong regex', "11111".replace(new RegExp(1,'g'),"-replace-"))
