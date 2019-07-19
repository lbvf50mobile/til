// https://www.codewars.com/kata/simple-assembler-interpreter/train/javascript
function simple_assembler(program) {
    let cmd = program.map( x => new Object({c:x.split(' ')[0], a:x.split(' ')[1], b:x.split(' ')[2]}));
    let pointer = 0;
    let registers = {};
    let act = {
      mov: (({a,b}) => { console.log('mov', a,b);
        let y = /^[a-z]$/.test(b) ? registers[b] : +b;
        registers[a] = y;
        pointer += 1;}),
      inc: (({a,b}) => {console.log('inc', a,b); registers[a] += 1; pointer += 1;}),
      dec: (({a,b}) => {console.log('dec', a,b); registers[a] -= 1; pointer += 1;}),
      jnz: (({a,b}) => {console.log('jnz', a,b); pointer += 1;}),
    }
    for( ; ; ){
      if(!cmd[pointer]) break;
      let instruction = cmd[pointer];
      let method = act[instruction.c];
      method(instruction);
    }
    return registers
  }