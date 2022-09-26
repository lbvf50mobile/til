// Leetcode: 990. Satisfiability of Equality Equations.
// https://leetcode.com/problems/satisfiability-of-equality-equations/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms, faster than 8.33% of Go online submissions for Satisfiability of Equality Equations.
// Memory Usage: 3.1 MB, less than 29.17% of Go online submissions for Satisfiability of Equality Equations.
import "fmt"
func equationsPossible(equations []string) bool {
  used_chars := make([]bool,26)
  for _,str := range(equations){
    a,b := str[0],str[3] 
    used_chars[int(a) - int('a')] = true
    used_chars[int(b) - int('a')] = true
  }
  adjacency_list := make([][]bool,26)
  for i := 0; i < 26; i+=1{
    adjacency_list[i] = make([]bool,26)
    adjacency_list[i][i] = true 
  }
  for _, str := range(equations){
    if '!' == str[1] { continue}
    a,b := int(str[0]) - int('a'),int(str[3]) - int('a')
    adjacency_list[a][b] = true
    adjacency_list[b][a] = true
  }
  components := make(map[int]int,26)
  visited := make([]bool,26)
  for i := 0; i < 26; i+=1{
    if ! used_chars[i] {continue}
    if visited[i] {continue}
    dfs(i,adjacency_list,visited, components,used_chars)
  }
  for _, str := range(equations){
    if '=' == str[1] { continue}
    a,b := int(str[0]) - int('a'),int(str[3]) - int('a')
    if components[a] == components[b] {return false}
  }
  return true
}

func dfs(num int, al  [][]bool, v  []bool, c map[int]int, u []bool){
  q := make([]int,0,26)
  v[num] = true
  q = append(q,num)
  for ; 0 < len(q); {
    x := q[len(q)-1]
    q = q[0:len(q)-1]
    c[x] = num
    for i := 0; i < 26; i+=1 {
      if ! u[i] {continue}
      if v[i] {continue}
      if ! al[x][i] {continue}
      v[i] = true
      q = append(q,i)
    }
  }
}

