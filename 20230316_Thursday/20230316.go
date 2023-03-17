// Leetcode: 106. Construct Binary Tree from Inorder and Postorder Traversal.
// https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 62.77% of Go online submissions for Construct Binary Tree from Inorder and Postorder Traversal.
// Memory Usage: 4 MB, less than 95.74% of Go online submissions for Construct Binary Tree from Inorder and Postorder Traversal.
// 2023.03.18 Update.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
var pst []int

func buildTree(inorder []int, postorder []int) *TreeNode {
  pst = postorder
  return build(inorder)
}
func build(inorder []int) *TreeNode {
  if 0 == len(inorder) || 0 == len(pst) {
    return nil
  }
  val := pst[len(pst)-1]
  pst = pst[:len(pst)-1]
  root := new(TreeNode)
  root.Val = val
  ii := 0
  for i,v := range inorder {
    if v == val {
      ii = i
      break
    }
  }
  root.Right = build(inorder[ii+1:])
  root.Left = build(inorder[:ii])
  return root
}
