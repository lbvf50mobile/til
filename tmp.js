delta = [[1,2],[2,1],[2,-1],[1,-2],[-1,-2],[-2,-1],[-2,1],[-1,2]];
possible_turns = ([x,y]) => delta.map( ([x1,y1]) => [x+x1, y+y1]).filter( ([x,y]) => 0 <= x && x <= 7 && 0 <= y && y <= 7);
parser = x => [x[0].charCodeAt(0) - 'a'.charCodeAt(0), parseInt(x[1])]
bfs = (s,f) => {
        var level = 0;
        var hash = {};
        hash[s] = level;
        var burn = [s]
        while (burn.length > 0){
                let tmp = burn.shift();
                level = hash[tmp];
                console.log(tmp,level)
                
                if(tmp.toString() == f.toString()) return level;
                //console.log(possible_turns(tmp))
                possible_turns(tmp).forEach( x=>{
                        if(undefined == hash[x]){
                                burn.push(x);
                                hash[x] = level + 1;
                        }
                });
                
        }
        return level;
}
//console.log(parser('f3'))
//console.log(parser('b8'))
bfs([ 5, 3 ],[ 1, 8 ])