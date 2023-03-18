// Leetcode: 958. Check Completeness of a Binary Tree.
// https://leetcode.com/problems/check-completeness-of-a-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 51.26% of Go online submissions for Check Completeness of a Binary Tree.
// Memory Usage: 3.2 MB, less than 57.75% of Go online submissions for Check Completeness of a Binary Tree.
// 2023.03.18 Updated.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func isCompleteTree(root *TreeNode) bool {
  // Based on:
  // https://leetcode.com/problems/check-completeness-of-a-binary-tree/solution/
  if nil == root {
    return true
  }
  nilFound := false
  q := make([]*TreeNode,0)
  q = append(q, root)
  for 0 < len(q) {
    x := q[0]
    q = q[1:] // Shift.
    if nil == x {
      nilFound = true
    }else {
      if nilFound {
        return false
      }
      q = append(q,x.Left)
      q = append(q,x.Right)
    }
  }
  return true
}
