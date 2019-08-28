// https://www.codewars.com/users/Steffan153 about [...Array(1000).keys()]

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

first = timer('[...Array(1000).keys()]')
for(i = 0; i < 100000; i++){
   [...Array(1000).keys()]
}
first.stop(); // Timer: [...Array(1000).keys()] finished in 9291 ms

second = timer('Array.from({length: 1000}, (i,_) => i)')
for(i = 0; i < 100000; i++){
  Array.from({lenght: 1000}, (i,_) => i)
}
second.stop(); // Timer: Array.from({length: 1000}, (i,_) => i) finished in 57 ms


first = timer('[...Array(1000).keys()]: only once');
   [...Array(1000).keys()]
first.stop(); // Timer: [...Array(1000).keys()] finished in 9291 ms

second = timer('Array.from({length: 1000}, (i,_) => i): only once')
  Array.from({lenght: 1000}, (i,_) => i)
second.stop(); // Timer: Array.from({length: 1000}, (i,_) => i) finished in 57 ms

first = timer('[...Array(100).keys()]: 1000 * 100');
for(i = 0; i < 1000; i++) [...Array(100).keys()]
first.stop(); // Timer: [...Array(1000).keys()] finished in 9291 ms

second = timer('Array.from({length: 100}, (i,_) => i): 1000 * 100')
for(i = 0; i < 1000; i++) Array.from({lenght: 100}, (i,_) => i)
second.stop(); // Timer: Array.from({length: 1000}, (i,_) => i) finished in 57 ms