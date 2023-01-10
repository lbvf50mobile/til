// Leetcode: 100. Same Tree.
// https://leetcode.com/problems/same-tree/
// = = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 53.55% of Go online submissions for Same Tree.
// Memory Usage: 2 MB, less than 100.00% of Go online submissions for Same Tree. 
// 2023.01.10 Daily Challenge.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func isSameTree(p *TreeNode, q *TreeNode) bool {
  if nil == p && q == nil { return true }
  if nil == p || q == nil { return false }
  if p.Val != q.Val { return false }
  return isSameTree(p.Left,q.Left) && isSameTree(p.Right,q.Right)
}
