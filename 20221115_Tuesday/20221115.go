// Leetcode: 222. Count Complete Tree Nodes.
// https://leetcode.com/problems/count-complete-tree-nodes/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 43 ms, faster than 7.83% of Go online submissions for Count Complete Tree Nodes.
// Memory Usage: 8.2 MB, less than 5.22% of Go online submissions for Count Complete Tree Nodes.
// 2022.11.15 Daily Challenge.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
// import "fmt"
// var p = fmt.Println
var q [] *TreeNode
func countNodes(root *TreeNode) int {
  if nil == root {
    return 0
  }
  // p(root)
  counter := 0
  q = make([] * TreeNode, 0)
  push(root) // Fix. Forget to add.
  // p(q,"queue")
  for ; 0 < len(q); {
    x := shift()
    // p(x,"x")
    counter += 1
    if nil != x.Left {
      push(x.Left)
    }
    if nil != x.Right {
      push(x.Right)
    }
    // p(q,"q in a loop")
  }
  return counter
}
func push(x *TreeNode) {
  q = append(q, x)
}
func shift() *TreeNode {
  n := len(q)
  ans := q[0]
  q = q[1:n] // Fix.
  return ans
}
