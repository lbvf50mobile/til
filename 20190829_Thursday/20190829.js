console.log("alias x='node 20190829_Thursday/20190829.js'");

// JS: using Default parameters to count a value.

// https://gist.github.com/lbvf50mobile/ab6edbcd5b2cf4142de7ed988107bb06

var _ = require('lodash')
let arrAndMax = (arr, max = Math.max(...arr)) => console.log(`The array: ${String(arr)} max = ${max}`);

[...Array(5).keys()].forEach(x => arrAndMax(Array.from({length: 5}, x => _.random(1,10))));
