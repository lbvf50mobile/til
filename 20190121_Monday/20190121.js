console.log("alias x='node 20190121_Monday/20190121.js'");

// JS Array.from() (Sequence generator (range));


// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/from
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/from#Sequence_generator_(range)


// Sequence generator functin (commonly referred to as "range, e.g Clojure, PHP etc")

const range = (start, stop, step) => Array.from({length:(stop - start)/step},
    (_,i) => start + (i*step)
);

console.log(range(0,5,1));

const ruby = (start,stop) => Array.from({length: stop - start + 1}, (x,y)=>{
    console.log("first argument :", x);
    console.log("seondt argument :", y);
    return start + y;
});

console.log(ruby(0,3));