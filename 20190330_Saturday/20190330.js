console.log("alias x='node 20190330_Saturday/20190330.js'");
// Generate: 36 sectonds; Sort: 110 seconds

var startTime, endTime;

function start() {
  startTime = new Date();
};

function end() {
  endTime = new Date();
  var timeDiff = endTime - startTime; //in ms
  // strip the ms
  timeDiff /= 1000;

  // get seconds 
  var seconds = Math.round(timeDiff);
  console.log(seconds + " seconds");
}

function shuffle(a) {
    for (let i = a.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [a[i], a[j]] = [a[j], a[i]];
    }
    return a;
}

let mln_arr = () => shuffle(Array.from({length: 1000000}, (_,i) => i));
let buffer = []
console.log("Generate arrays:");
start();
for(i=0; i<=100; i++) buffer.push(mln_arr());
console.log(end());

console.log("Sort arrays:")
start();
buffer.forEach(x => x.sort())
console.log(end());
