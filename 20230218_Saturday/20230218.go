// Leetcode: 226. Invert Binary Tree.
// https://leetcode.com/problems/invert-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 58.43% of Go online submissions for Invert Binary Tree.
// Memory Usage: 2.1 MB, less than 100.00% of Go online submissions for Invert Binary Tree.
// 2023.02.18 Daily Challenge.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func invertTree(root *TreeNode) *TreeNode {
  if nil == root { return root }
  root.Left, root.Right = root.Right, root.Left
  invertTree(root.Left)
  invertTree(root.Right)
  return root
}
