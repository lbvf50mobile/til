console.log("alias x='node 20190416_Tuesday/20190416.js'");

// JS Map store real keys, meanwhile Object stores string representations.

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map

const map = new Map;
let func = x => 2
let str = new String(func)
console.log(func)
console.log(str)
map.set(func,4)
console.log("Using Map")
console.log("Get data by funct",map.get(func))
map.set(str,5)
console.log("Get data by str,fuct",map.get(str), map.get(func))

console.log("Now compare with Object.")
const arr = {}
arr[func] = 4
console.log("Get data by funct (Object)", arr[func])
arr[str] = 5
console.log("Get data by str, funct (Object)", arr[str],arr[func] )