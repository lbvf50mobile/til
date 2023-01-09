// Leetcode: 144. Binary Tree Preorder Traversal.
// https://leetcode.com/problems/binary-tree-preorder-traversal/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 34.10% of Go online submissions for Binary Tree Preorder Traversal.
// Memory Usage: 1.9 MB, less than 65.48% of Go online submissions for Binary Tree Preorder Traversal.
// 2023.01.09 Daily Challenge.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func preorderTraversal(root *TreeNode) []int {
  answer := make([]int,0)
  if nil == root { return answer }
  q := make([]*TreeNode,0)
  q = append(q,root)
  for 0 != len(q){
    x := q[len(q)-1]
    q = q[0:len(q)-1]
    answer = append(answer,x.Val)
    if nil != x.Right { q = append(q, x.Right) }
    if nil != x.Left { q = append(q, x.Left) }
  }
  return answer
}

