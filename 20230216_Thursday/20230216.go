// Leetcode: 104. Maximum Depth of Binary Tree.
// https://leetcode.com/problems/maximum-depth-of-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 85.87% of Go online submissions for Maximum Depth of Binary Tree.
// Memory Usage: 4.2 MB, less than 48.75% of Go online submissions for Maximum Depth of Binary Tree.
// 2023.02.16 Daily Challenge.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
var max int
func maxDepth(root *TreeNode) int {
  max = 0
  dfs(root,1)
  return max
}
func dfs(x *TreeNode, deep int){
  if nil == x { return }
  if deep > max { max = deep }
  dfs(x.Left, deep+1)
  dfs(x.Right, deep+1)
}
