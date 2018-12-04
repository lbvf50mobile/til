let music = new Promise((ok,error)=>ok("op!"));
music.then(n=>{console.log(n + 11); return n + " ca!"}).then(n=>console.log(n+4));
music.then(n=>console.log(n+ 21));
music.then(n=>console.log(n+31));