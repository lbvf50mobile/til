let max_by_second = x => x.sort(([_,a],[__,b]) => b - a)[0]; 
let a = [[1,2],[5,101],[8,0],[7,15]]
console.log(max_by_second(a)); // [5,101]