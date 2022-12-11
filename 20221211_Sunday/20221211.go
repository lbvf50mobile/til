// Leetcode: 124. Binary Tree Maximum Path Sum.
// https://leetcode.com/problems/binary-tree-maximum-path-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 18 ms, faster than 85.37% of Go online submissions for Binary Tree Maximum Path Sum.
// Memory Usage: 7.5 MB, less than 83.62% of Go online submissions for Binary Tree Maximum Path Sum.
// 2022.12.11 Daily Challenge.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
var max int
func maxPathSum(root *TreeNode) int {
  max = root.Val
  dfs(root)
  return max
}

func dfs(r *TreeNode) int{
  if nil == r {
    return 0
  }
  a,b,c := dfs(r.Left),dfs(r.Right), r.Val
  if a < 0 { a = 0 }
  if b < 0 { b = 0 }
  x := a + b + c
  if max < x  { max = x}
  ans := a + c
  if (b + c) > ans { ans = b + c}
  return ans
}

