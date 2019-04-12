console.log("alias x='node 20190412_Friday/20190412.js'");

// JS orderded count of characters with Map object.

let data = ['aabbbbccccc', 'bbbbaaccccc', 'cccccbbbbaa'];

let count = x => {
   let map = [...x].reduce((acum,value)=>{
        if(undefined == acum.get(value)){
            acum.set(value, 1)
        }else{
            acum.set(value, acum.get(value)+1)
        }
        return acum

    }, new Map);
     return  [...map];
}

data.forEach(str => {
    console.log(str)
    console.log(count(str))
})