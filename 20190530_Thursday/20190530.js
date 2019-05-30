console.log("alias x='node 20190530_Thursday/20190530.js'");
// JS Spread operator in Objects.

z = {first: 1, ...(true ? {second:2} : {})};
console.log(z,"JS Spread operator in Objects.")