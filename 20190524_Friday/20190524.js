console.log("alias x='node 20190524_Friday/20190524.js'");

// JS @bandorghild solution of RowsRearranging.

//  https://gist.github.com/lbvf50mobile/0eb210e30088e9160c071cbd2dc5c90a

// 1. Get column indexes
// 2. Each column index become an array of rows indexes
// 3. Array of rows indexes, become in value of sorted matrix for corresponding column
// 4. column index => sorted columns
// 5. check columns are strictly increasingn sequence

// Advantages: one row
// Disadvatages: hard to read, sort on every element of the matrix.

function rowsRearranging(m) {
    return m[0].map((_,i)=>i).map(i=>m.map((_,i)=>i).map(j=>m.sort((x,y)=>x[0]-y[0])[j][i]))
                        .every(i=>[...new Set(i)].sort((x,y)=>x-y).toString()==i.toString())}


matrix = [
    [6,4],
    [2,2],
    [4,3]
];

console.log("JS @bandorghild solution of RowsRearranging.")
console.log(true, rowsRearranging(matrix))