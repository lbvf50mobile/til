a = {z: x=>console.log(2)}
a.z() // 2
b = a.z
console.log(b) // [Funciton: z]
b() // 2
