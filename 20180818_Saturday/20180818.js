console.log("alias x='node 20180818_Saturday/20180818.js'")

function fact(n){
    if(0==n){
        return 1
    }else{
        return n * fact(n-1)
    }
}

console.log(fact(20))

for(var i = 0 ; i < 9000000; i++) {
    fact(20)
}

console.log(i)