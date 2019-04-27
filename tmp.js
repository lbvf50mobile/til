let a ={}
console.log(a[4], undefined == a[4])
console.log(new Set([1,1,1,1,2]))
let z = new Set([1,1,1,1,2])
z.forEach(x => console.log(x))

function fileNaming(names) {
    h = {}
    for(let i in names){
        n = names[i]
        if( undefined == h[n]){
            h[n] = 1;
        }else{
            for( ; h[names[i]] != undefined ;){
                let value = n + `(${h[n]})`
                names[i] = value
                h[n] += 1
            }
            h[names[i]] = 1
        }
    }
    return names;
}

input = ["doc", 
"doc", 
"image", 
"doc(1)", 
"doc"]

console.log(fileNaming(input))
