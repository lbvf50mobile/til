var x = {
    p: 1,
    m: ()=> console.log(`ARROW substitute: The "p" in a is ${this.p}`)
};
x.m(); // ARROW substitute: The "p" in a is undefined

var a = {
    p: 1,
    m: ()=> { console.log("A object",p); console.log(this); console.log(`The "p" in a is ${this.p}`);}
};
a.m(); // ARROW substitute: The "p" in a is undefined
var global_one = {
    p: "--I am a global_one 'p' value--",
    m: function(){ console.log("global_one object "); console.log(this.p); a.m();}
}
global_one.m(); // // ARROW substitute: The "p" in a is undefined.

let z = {
    p: 101,
    m: function(){console.log(`NORMAL: The "p" in z is ${this.p}`)}
};
z.m(); // 101