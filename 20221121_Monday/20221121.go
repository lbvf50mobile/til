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
func (q queue) size() int{
  return len(q.data)
}
var n, m int
var used [][]bool

func nearestExit(maze [][]byte, entrance []int) int {
  n = len(maze)
  m = len(maze[0])
  init_used()
  return 1
}
func init_used(){
  used = make([][]bool,n)
  for i := range used {
    used[i] = make([]bool,m)
  }
}
