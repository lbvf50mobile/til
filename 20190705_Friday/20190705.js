console.log("alias x='node 20190705_Friday/20190705.js'");

// JS Testing Lodash _.uniq
var _ = require('lodash')

var timer = function(name) {
    var start = new Date();
    return {
        stop: function() {
            var end  = new Date();
            var time = end.getTime() - start.getTime();
            console.log('Timer:', name, 'finished in', time, 'ms');
        }
    }
};

var t = timer('Using Lodas');
for(i = 0; i < 1000000; i+=1){
    let a = [...Array(50).keys()].map(x=> ~~(3*Math.random()));
    _.uniq(a)
}
t.stop(); // Timer: Using Lodas finished in 8797 ms

var t = timer('Using Set');
for(i = 0; i < 1000000; i+=1){
    let a = [...Array(50).keys()].map(x=> ~~(3*Math.random()));
    [...new Set(a)]
}
t.stop(); // Timer: Using Set finished in 11626 ms

var t = timer('Using unique by .forEach');
for(i = 0; i < 1000000; i+=1){
    const unique = (array) => {
        const unique = {}
        const result = []
      
        array.forEach((key) => {
          if (unique.hasOwnProperty(key)) {
            return
          }
          result.push(key)
          unique[key] = 1
        })
      
        return result
      }
      
    let a = [...Array(50).keys()].map(x=> ~~(3*Math.random()));
    unique(a)
}
t.stop(); // Timer: Using unique by .forEach finished in 9641 ms