// Leetcode: 1345. Jump Game IV.
// https://leetcode.com/problems/jump-game-iv/
// = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = =
// Runtime: 152 ms, faster than 42.86% of Go online submissions for Jump Game IV.
// Memory Usage: 12.3 MB, less than 57.14% of Go online submissions for Jump Game IV.
// 2023.03.06 Daily Challenge.
import "fmt"
var p = fmt.Println
func minJumps(arr []int) int {
  // Based on:
  // https://leetcode.com/problems/jump-game-iv/solution/
  n := len(arr)
  // p("n is",n,arr)
  if n <= 1 {
    return 0
  }
  g := make(map[int][]int)
  for i := 0; i < n; i += 1 {
    j := arr[i]
    if _, ok := g[j]; !ok {
      g[j] = make([]int,0)
    }
    g[j] = append(g[j],i)
    // p(g[j],i)
  }
  q := make([]int,1)
  q[0] = 0
  v := make(map[int]bool)
  v[0] = true
  step := 0
  for 0 != len(q) {
    nq :=make([]int,0)
    for _,node := range q {
      if n-1 == node { return step}
      j := arr[node]
      // Use adjacency list.
      for _, child := range g[j] {
        val, ok := v[child]
        if (!val) || (!ok) {
          v[child] = true
          nq = append(nq,child)
        }
      }
      // Clear.
      g[j] = make([]int,0)
      // Add neighbors.
      tmp := make([]int,2)
      tmp[0] = node - 1
      tmp[1] = node + 1
      for _, child := range tmp {
        if child < 0 || n <= child { continue }
        val, ok := v[child]
        if (!val) || (!ok) {
          v[child] = true
          nq = append(nq,child)
        }
      }
    }
    q = nq
    step += 1
  }
  return -1
}
