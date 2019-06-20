// JS ASI example.


 find2ndLargest = x =>  [...new Set(x)]
.filter(x => 'number' == typeof x).sort((a,b) => a-b).reverse()[1] || null;

console.log(find2ndLargest([-5,-7,0,-8,1]))

find2ndLargest = x =>  ( a = [...new Set(x)]
.filter(x => 'number' == typeof x).sort((a,b) => a-b).reverse()[1], a == undefined ? null : a) ;

console.log(find2ndLargest([-5,-7,0,-8,1]))