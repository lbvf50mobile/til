// Leetcode: 79. Word Search.
// https://leetcode.com/problems/word-search/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Word Search.
// Memory Usage: 2 MB, less than 67.16% of Go online submissions for Word Search.
// 2022.11.24 Daily Challenge.
var m,n int
var w string
var b [][]byte
var u [][]bool // used.
var d = [][]int{
  {1,0},
  {-1,0},
  {0, -1},
  {0, 1},
}
func exist(board [][]byte, word string) bool {
  b,w = board, word
  m,n = len(b),len(b[0])
  init_used()
  if len(w) > m*n {
    return false
  }
  if cstart(w) > cend(w){
    w = reverse(w)
  }
  for i := 0; i < m ; i += 1 {
    for j := 0; j < n; j += 1{
      if bck(i,j,0){
        return true
      }
    }
  }
  return false
}

func bck(i,j,k int) bool{
  if(k == len(w)) { return true}
  if ! in(i,j) { return false}
  if u[i][j] {return false}
  if b[i][j] != w[k] {return false}
  u[i][j] = true
  for _, dij := range d {
    ii,jj := i + dij[0], j + dij[1]
    if bck(ii,jj,k+1) { return true} 
  }
  u[i][j] = false
  return false
}
func init_used(){
  u = make([][]bool,m)
  for i:=0; i < m; i += 1 {
    u[i] = make([]bool, n)
  }
}
func cstart(s string) int{
  c := 1
  for ; c < len(s) && s[c-1] == s[c]; c += 1 {}
  return c
}
func cend(s string) int{
  c := 0
  for j := len(s) - 2; j >= 0 && s[j] == s[j+1] ; j -= 1 {
    c += 1
  }
  return c
}
func reverse(s string) string{
  x := []byte(s)
  for i,j := 0, len(s)-1; i < j; i,j = i + 1, j - 1{
    x[i],x[j] = x[j],x[i]
  }
  return string(x)
}
func in(i,j int) bool{
  return 0 <= i && i < m && 0 <= j && j < n;
}
