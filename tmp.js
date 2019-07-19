// https://www.codewars.com/kata/simple-assembler-interpreter/train/javascript
function simple_assembler(program) {
    let cmd = program.map( x => new Object({c:x.split(' ')[0], a:x.split(' ')[1], b:x.split(' ')[2]}));
    let pointer = 0;
    let registers = {};
    let act = {
      mov: (({a,b}) => { 
        info = `mov ${a}, ${b}`
        let y = /^[a-z]$/.test(b) ? registers[b] : +b;
        info += `; ${a} = ${registers[a]}; ${a} <= ${y}`
        registers[a] = y;
        info += `; ${a} = ${registers[a]}`
        pointer += 1;
        console.log(info)
        }),
      inc: (({a}) => { 
        info = `inc ${a}`
        info += `; ${a} = ${registers[a]}`
        registers[a] += 1; 
        info += `; ${a} = ${registers[a]}`
        pointer += 1;
        console.log(info)
        }),
      dec: (({a}) => {
        info = `dec ${a}`
        info += `; ${a} = ${registers[a]}`
        registers[a] -= 1;
        info += `; ${a} = ${registers[a]}`
        pointer += 1;
        console.log(info)
        }),
      jnz: (({a,b}) => {
        info = `jnz ${a}, ${b}`
        let x = /^[a-z]$/.test(a) ? registers[a] : +a;
        let y = /^[a-z]$/.test(b) ? registers[b] : +b;
        info += `; if: ${x}, jump_to: ${y}, pointer: ${pointer}`
         x > 0 ? pointer += y : pointer += 1;
         info += `=> ${pointer}`
         console.log(info)
      }),
    }
    for( ; ; ){
      if(!cmd[pointer]) break;
      let instruction = cmd[pointer];
      let method = act[instruction.c];
      method(instruction);
    }
    return registers
  }