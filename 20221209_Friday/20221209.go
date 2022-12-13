// Leetcode: 1026. Maximum Difference Between Node and Ancestor.
// https://leetcode.com/problems/maximum-difference-between-node-and-ancestor/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 57.81% of Go online submissions for Maximum Difference Between Node and Ancestor.
// Memory Usage: 3.9 MB, less than 72.88% of Go online submissions for Maximum Difference Between Node and Ancestor.
// 2022.12.09 Daily Challenge.
// 2022.12.13 Updated.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
var diff int
func maxAncestorDiff(root *TreeNode) int {
  diff = 0
  if nil == root {
    return 0
  }
  dfs (root, root.Val, root.Val)
  return diff
}

func dfs(r *TreeNode, min, max int){
  if nil == r { return }
  if r.Val < min {
    min = r.Val
  }
  if max < r.Val {
    max = r.Val
  }
  tmp := abs(max-min)
  if tmp > diff {
    diff = tmp
  }
  dfs(r.Left, min, max)
  dfs(r.Right, min, max)
}

func abs(a int) int{
  if a < 0  { return - a }
  return  a
}
