// Leetcode: 2359. Find Closest Node to Given Two Nodes.
// https://leetcode.com/problems/find-closest-node-to-given-two-nodes/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 166 ms, faster than 63.64% of Go online submissions for Find Closest Node to Given Two Nodes.
// Memory Usage: 9.6 MB, less than 81.82% of Go online submissions for Find Closest Node to Given Two Nodes.
// 2023.01.25 Daily Challenge.
import "fmt"
var p = fmt.Println
func closestMeetingNode(edges []int, node1 int, node2 int) int {
  n := len(edges)
  d1 := make([]int,n)
  qv := make([]int,1) // Vertex.
  ql := make([]int,1) // Level.
  qv[0],ql[0] = node1, 0
  v1 := make([]bool,n)
  v1[node1] = true
  for 0 != len(qv) {
    x := qv[0]
    l := ql[0]
    y := edges[x]
    qv = qv[1:len(qv)]
    ql = ql[1:len(ql)]
    d1[x] = l
    if -1 != y && (!v1[y]) {
      ql = append(ql,l+1)
      qv = append(qv,y)
      v1[y] = true
    }
  }
  v2,d2 := make([]bool,n),make([]int,n)
  v2[node2] = true
  qv,ql = make([]int,1),make([]int,1)
  qv[0],ql[0] = node2, 0
  for 0 != len(qv) {
    x, l := qv[0], ql[0]
    y := edges[x]
    qv = qv[1:len(qv)]
    ql = ql[1:len(ql)]
    d2[x] = l
    if -1 != y && (!v2[y]){
      ql = append(ql, l+1)
      qv = append(qv,y)
      v2[y] = true
    }
  }
  min := n*10
  answer := -1
  for i := 0; i < n ; i += 1 {
    if v1[i] && v2[i] {
      tmp := max(d1[i],d2[i])
      if tmp < min {
        answer = i
        min = tmp
      }
    }
  }
  return answer
}

func max(a, b int) int {
  if a > b {
    return a 
  } else {
    return b
  }
}
