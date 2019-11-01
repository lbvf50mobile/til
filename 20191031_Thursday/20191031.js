console.log("alias x='node 20191031_Thursday/20191031.js'");

// CodeWars, JS: Find shortest path. (in action)

// Tips from @smkheev
// https://www.twblogs.net/a/5d75719fbd9eee541c342e87
// ( @smikheev )
// Minimal Path in Graph
// Elements of programming interview. Search a maze. 

// https://www.codewars.com/kata/path-finder-number-3-the-alpinist/train/javascript
// Fails on the last open test.
const prepare_array = x => x.split("\n").map(y => y.split('').map(x => +x))
const bound = {
  size: 0,
  in: function(x){ return 0 <= x && x < this.size;},
  shortest: undefined,
  set_shortest: function(x){
    if(undefined == this.shortest){
      this.shortest = x
    }else if(this.shortest > x){
      this.shortest = x
    }
    
  }
}
const key = (x,y) => `${x},${y};`;
function pathFinder(area){
  let a = prepare_array(area);
  let answer = [];
  bound.size = a.length;
  bound.shortest = undefined;
  let last = a.length - 1;
  
  let first_used = {};
  first_used[key(0,0)] = true;
  
  
  let queue = [{x: 0, y: 0, h: 0,  path: "0,0;", used: first_used}];
  
  
  
  while(queue.length > 0 ){
    let {x,y,h,path, used} = queue.shift();
      [[-1,0],[0,-1],[1,0],[0,1]].forEach(([dx,dy]) => {
          let [nx,ny] = [dx+x, dy+y];
          let inbound = bound.in(nx) && bound.in(ny);
          if (!inbound) return;
          
          let nh = h + Math.abs(a[x][y] - a[nx][ny]);
          let npath = path + `${nx},${ny};`
          
          if( !(undefined == bound.shortest || bound.shortest > nh) ) return;
          
          if( nx == last && ny == last){
            bound.set_shortest(nh);
            answer.push([nh,npath])
          }else if( inbound && undefined == used[key(nx,ny)] ){
            let used_new = Object.assign({}, used)
            used_new[key(nx,ny)] = true
            queue.push({x:nx,y:ny,h:nh, path: npath, used: used_new});
            
          }
    });
    
  }
  console.log(answer, bound.shortest)
  
  
  return bound.shortest;
}