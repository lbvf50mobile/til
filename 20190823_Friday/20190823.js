console.log("alias x='node 20190823_Friday/20190823.js'");


// https://www.codewars.com/kata/a-string-of-sorts/

const sortBy = require('lodash/sortBy');

function sortString(string, ordering) {
  let pos = c => ordering.indexOf(c) + 1 || ordering.length + 1
  s = [...string]
  a = sortBy(s, pos).join('');
  b = s.sort((a,b) => pos(a) - pos(b)).join(''); 
  if( a != b){
    console.log("input", [string, ordering])
  }
  return b
}

// input [ 'cswnkrfevuo', 'ddenrfp' ]

sortString('cswnkrfevuo', 'ddenrfp')