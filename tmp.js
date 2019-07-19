// https://www.codewars.com/kata/simple-assembler-interpreter/train/javascript
function simple_assembler(program) {
    let cmd = program.map( x => new Object({c:x.split(' ')[0], a:x.split(' ')[1], b:x.split(' ')[2]}));
    let act = {
      mov: (({a,b}) => console.log('mov', a,b)),
      inc: (({a,b}) => console.log('inc', a,b)),
      dec: (({a,b}) => console.log('mov', a,b)),
      jnz: (({a,b}) => console.log('mov', a,b)),
    }
  }