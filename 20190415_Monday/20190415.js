console.log("alias x='node 20190415_Monday/20190415.js'");

// JS object keys are string representation of themselfs.

a = {a:1}
b = {a:1}
c = x => 2;
string_representation = c.toString()
string_representation1 = String(c)
console.log("The string representation ", string_representation)
console.log("The string representation #1 ", string_representation1)

a[c] = "value under func_key"
b[string_representation] = "value under string representation of a funct"

console.log("A (function as key):".padEnd(33," "),a)
console.log("B (function.toString() as key):".padEnd(33," "), b)
