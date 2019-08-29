// @kotsabiukmv

// Array generator
let generate = x => Array.from({length: x}, x => Math.random() > 0.5);


// 1) able to jump only over 1 postion
let check1 = arr => {
  if(!arr[0]) return false; // need to be able to start.
  for(var i = 0; i < arr.length ; i++){
    if(!arr[i] && i+1 < arr.length && !arr[i+1]) return false;
  }
  return true;
}

test = [[true,false,true],true]
console.log(`Array [${String(test[0])}] must be  ${test[1]}: it is ${check1(test[0])}`)

test = [[true,true,true],true]
console.log(`Array [${String(test[0])}] must be  ${test[1]}: it is ${check1(test[0])}`)

test = [[true,true,false],true]
console.log(`Array [${String(test[0])}] must be  ${test[1]}: it is ${check1(test[0])}`)

test = [[false,true,false],false]
console.log(`Array [${String(test[0])}] must be  ${test[1]}: it is ${check1(test[0])}`)

test = [[true,false,false],false]
console.log(`Array [${String(test[0])}] must be  ${test[1]}: it is ${check1(test[0])}`)