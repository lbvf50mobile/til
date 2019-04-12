console.log("alias x='node 20190412_Friday/20190412.js'");

// JS orderded count of characters with a Map object. (compare with obj)

let data = ['aabbbbccccc', 'bbbbaaccccc', 'cccccbbbbaa'];

let count = x => {
    console.log("count_map");
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

let count_object = x =>{
    console.log("count_object");
    let obj = [...x].reduce((acum,value)=>{
        if(undefined == acum[value]){
            acum[value] = 1;
        }else{
            acum[value] += 1;
        }
        return acum;
    },{})
    ans = []
    for ( let k in obj){
        ans.push([k,obj[k]])
    }
    return ans;

}

data.forEach(str => {
    console.log(str)
    console.log(count(str))
    console.log(count_object(str))
})
