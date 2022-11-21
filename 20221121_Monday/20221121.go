// Leetcode: 1926. Nearest Exit from Entrance in Maze.
// https://leetcode.com/problems/nearest-exit-from-entrance-in-maze/
type element struct{
  i int
  j int
  l int
}
type queue struct {
  data []*element
}
func (q queue) init(){
  q.data = make([]*element,0)
}
func (q queue) push(x *element){
  q.data = append(q.data,x)
}
func (q queue) shift() *element{
  x := q.data[0]
  q.data =q.data[1:]
  return x
}
func (q queue) empty() bool{
  return 0 != len(q.data)
}
var n, m int
var used [][]bool

func nearestExit(maze [][]byte, entrance []int) int {
  n = len(maze)
  m = len(maze[0])
  delta := [][]int{
    {-1,0},
    {1,0},
    {0, -1},
    {0, 1},
  }
  q := queue{}
  q.init()
  init_used()
  i,j := entrance[0],entrance[1]
  used[i][j] = true
  q.push(&element{i,j,0}
  for ; ! q.empty() ; {
    x := q.shift()
    i,j,l := x.i, x.j, x.l
    for _,dlt := range delta{
      di,dj := dlt[0],dlt[1]
      ni,nj,nl := i+di, j+dj, l+1
      if out_(ni,nj){
        if 0 != l { return l }
      }else{
        if used[ni][nj] {continue}
        if '+' == maze[ni][nj] {continue}
        used[ni][nj] = true
        q.push(&element{ni,nj,nl})
      }
    }
  }
  return  -1
}
func init_used(){
  used = make([][]bool,n)
  for i := range used {
    used[i] = make([]bool,m)
  }
}
func in_(i,j int) bool{
  return 0 <= i && i < n && 0 <= j && j < m
}
func out_(i,j int) bool {
  return ! in_(i,j)
}
