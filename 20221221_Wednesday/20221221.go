// Leetcode: 886. Possible Bipartition.
// https://leetcode.com/problems/possible-bipartition/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 100 ms, faster than 96.97% of Go online submissions for Possible Bipartition.
// Memory Usage: 8 MB, less than 87.88% of Go online submissions for Possible Bipartition.
// 2022.12.21 Daily Challenge.
func possibleBipartition(n int, dislikes [][]int) bool {
  // Create Adjacency list.
  adj := make([][]int,n)
  for i := 0; i < n ; i += 1 {
    adj[i] = make([]int,0)
  }
  for _, arr := range dislikes {
    // Because in the dislikes values are 1-based.
    a,b := arr[0]-1, arr[1]-1
    adj[a] = append(adj[a], b)
    adj[b] = append(adj[b], a)
  }
  colors := make([]int,n)
  for i := 0 ; i < n ; i += 1 {
    if 0 != colors[i] { continue}
    q,qc := make([]int,0), make([]int,0)
    q = append(q,i)
    qc = append(qc,1)
    colors[i] = 1
    for 0 != len(q) {
      x,c := q[0], qc[0]
      q, qc = q[1:len(q)], qc[1:len(qc)]
      nc := 1
      if 1 == c { nc = 2 }
      for _,y := range adj[x] {
        if c == colors[y] { return false}
        if nc == colors[y] { continue}
        colors[y] = nc
        q = append(q,y)
        qc = append(qc,nc)
      }
    }
  }
  return true
}
