let x = {
    p: 1,
    m: ()=> console.log(`ARROW: The "p" in x is ${this.p}`)
};

x.m(); // 1? undefined

let z = {
    p: 101,
    m: function(){console.log(`NORMAL: The "p" in z is ${this.p}`)}
};
z.m(); // 101