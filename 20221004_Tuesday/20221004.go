// Leetcode: 112. Path Sum.
// https://leetcode.com/problems/path-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Path Sum.
// Memory Usage: 4.6 MB, less than 93.95% of Go online submissions for Path Sum.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func hasPathSum(root *TreeNode, targetSum int) bool {
  if nil ==  root { return false}
  value := targetSum - root.Val
  if 0 == value && nil == root.Left && nil == root.Right {
    return true
  }
  if (nil != root.Left) && (nil !=root.Right){
    return hasPathSum(root.Left, value) || hasPathSum(root.Right, value)
  }else if (nil != root.Left){
    return hasPathSum(root.Left, value)
  }else if (nil != root.Right){
    return  hasPathSum(root.Right, value)
  } else {
    return false
  }
  return false
}
