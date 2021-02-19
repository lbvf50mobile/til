console.log("alias x='node 20210219_Friday/20210219.js'");

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

var t = timer('Array fill.')
for(i=0; i < 100000; i++){
    Array(5).fill()
}
t.stop()

var t1 = timer('Apply.')
for(i=0; i < 100000; i++){
    Array.apply(null, Array(5))
}
t1.stop()
// Timer: Array fill. finished in 23 ms
// Timer: Apply. finished in 55 ms