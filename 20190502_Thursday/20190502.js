console.log("alias x='node 20190502_Thursday/20190502.js'");

// JS each_cons;

// eachSlice https://gist.github.com/SauloSilva/9771598
// Ruby  https://apidock.com/ruby/Enumerable/each_cons

Array.prototype.eachCons = function (size){
    this.arr = []
    for (var i = 0, l = this.length; i + size <= l; i += 1){
      this.arr.push(this.slice(i, i + size))
    }
    return this.arr
  }

  a = [...Array(5).keys()].map(x=>x+1);
  console.log(a); // [ 1, 2, 3, 4, 5 ]
  console.log(a.eachCons(2)) // [ [ 1, 2 ], [ 2, 3 ], [ 3, 4 ], [ 4, 5 ] ]
  console.log(a.eachCons(3)) // [ [ 1, 2, 3 ], [ 2, 3, 4 ], [ 3, 4, 5 ] ]
