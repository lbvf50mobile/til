console.log("alias x='node 20190502_Thursday/20190502.js'");

// JS each_cons;

// eachSlice https://gist.github.com/SauloSilva/9771598
// Ruby  https://apidock.com/ruby/Enumerable/each_cons
// https://gist.github.com/lbvf50mobile/cc438a74c80fa17ab78498aa9326ebc9

Array.prototype.eachCons = function (size){
    this.arr = []
    for (var i = 0; i + size -1 <= this.length - 1; i += 1){
      this.arr.push(this.slice(i, i + size))
    }
    return this.arr
  }

  a = [...Array(5).keys()].map(x=>x+1);
  console.log(a, "initial array"); // [ 1, 2, 3, 4, 5 ] 'initial array'
  console.log(a.eachCons(1),"a.eachCons(1)") // [ [ 1 ], [ 2 ], [ 3 ], [ 4 ], [ 5 ] ] 'a.eachCons(1)'
  console.log(a.eachCons(2),"a.eachCons(2)") // [ [ 1, 2 ], [ 2, 3 ], [ 3, 4 ], [ 4, 5 ] ] 'a.eachCons(2)'
  console.log(a.eachCons(3),"a.eachCons(3)") // [ [ 1, 2, 3 ], [ 2, 3, 4 ], [ 3, 4, 5 ] ] 'a.eachCons(3)'
  console.log(a.eachCons(4),"a.eachCons(4)") // [ [ 1, 2, 3, 4 ], [ 2, 3, 4, 5 ] ] 'a.eachCons(4)'
