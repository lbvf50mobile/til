// Leetcode: 1971. Find if Path Exists in Graph.
// https://leetcode.com/problems/find-if-path-exists-in-graph/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 533 ms, faster than 63.64% of Go online submissions for Find if Path Exists in Graph.
// Memory Usage: 31.5 MB, less than 82.95% of Go online submissions for Find if Path Exists in Graph.
// 2022.12.19 Daily Challenge.
func validPath(n int, edges [][]int, source int, destination int) bool {
  if source == destination {
    return true
  }
  // Adjacency list.
  al := make([][]int,n)
  for i := 0; i < n ; i += 1 {
    al[i] = make([]int,0)
  }
  // Used.
  u := make([]bool,n)
  // Fill Adjacency list.
  for _, v := range edges {
    a,b := v[0], v[1]
    al[a] = append(al[a],b)
    al[b] = append(al[b],a)
  }
  u[source] = true
  q := make([]int,0)
  q = append(q,source)
  for 0 != len(q) {
    x := q[0]
    q = q[1:len(q)]
    for _, y := range al[x] {
      if destination == y { return true}
      if u[y] { continue}
      u[y] = true
      q = append(q,y)
    }
  }
  return false
}
