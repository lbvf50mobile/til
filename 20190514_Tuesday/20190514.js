#!/usr/bin/env node
console.log("alias x='node 20190514_Tuesday/20190514.js'");

// JS Array.prototype.transpose (thnx @b-tarik)

Array.prototype.transpose = function(){
    // Each cell of first row, transer to array of reduced rows that is a column.
    // Each sell become a column, and this a column is a row. Cool.
    return [...this[0]].map((_,column_index)=> this.map((_,row_index)=>this[row_index][column_index]));
}

a = [[1,2],[3,4]]
console.log(a,"this is A array.") // [ [ 1, 2 ], [ 3, 4 ] ] 'this is A array.'
console.log(a.transpose(),"This is A transposed.") // [ [ 1, 3 ], [ 2, 4 ] ] 'This is A transposed.'
console.log(a.transpose().transpose(),"This is A transposed 2 times.") // [ [ 1, 2 ], [ 3, 4 ] ] 'This is A transposed 2 times.'
