// JS Array.prototype.concat and Array.prototype.reduceRight


// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/ReduceRight

console.log("alias x='node 20181102_Friday/20181102.js'")

console.log([1,2].concat([3,4,5]))

x = [[2,1],[4,3],[6,5],[8,7]].reduceRight((a,x)=>a.concat(x))

console.log(x)