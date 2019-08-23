console.log("alias x='node 20190823_Friday/20190823.js'");


// https://www.codewars.com/kata/a-string-of-sorts/

const sortBy = require('lodash/sortBy');
var colors = require('colors')

let describer = (s,o) =>{
    console.log("Input string ", s.green)
    console.log("Order string ", o.green)
    console.log("Part string for sorting ", s.replace(new RegExp(`[^${o}]`,'g'),'').yellow)
    console.log("Part string for put in to the back ", s.replace(new RegExp(`[${o}]`,'g'),'').red)

};

let logger = a => {
    a.forEach(x => console.log(x))
}

function sortString(string, ordering) {
    describer(string, ordering)
  let pos = c => ordering.indexOf(c) + 1 || ordering.length + 1
  let log = []
  let sorter = (a,b) => {
      log.push({a: a, b: b, dif: pos(a)-pos(b), pa: pos(a), pb: pos(b)})
      return pos(a) - pos(b);
  }
  s = [...string]
  a = sortBy(s, pos).join('');
  b = s.sort(sorter).join(''); 
  logger(log)
  if( a != b){
    console.log("input", [string, ordering])
    console.log("l:", a)
    console.log("s:", b)
  }
  return b
}

// input [ 'cswnkrfevuo', 'ddenrfp' ]

sortString('cswnkrfevuo', 'ddenrfp')