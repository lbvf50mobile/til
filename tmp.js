let test = "hi";
let z = [...test];
console.log(z);
let west = ["west"];
let y = [...west];
console.log(y)
let test2 = 22;
try{
let x = [...test2];
}catch(e){
    console.log(e.message)
}