// Leetcode: 938. Range Sum of BST.
// https://leetcode.com/problems/range-sum-of-bst/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 159 ms, faster than 58.46% of Go online submissions for Range Sum of BST.
// Memory Usage: 9.8 MB, less than 5.38% of Go online submissions for Range Sum of BST.
// 2022.12.07 Daily Challenge.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func rangeSumBST(root *TreeNode, low int, high int) int {
  if nil == root { return 0}
  r := root
  if low <= r.Val && r.Val <= high {
    sum := rangeSumBST(r.Left,low,high)+rangeSumBST(r.Right,low,high)
    return r.Val + sum
  } else if r.Val < low {
    return rangeSumBST(r.Right,low,high)
  } else if high < r.Val {
    return rangeSumBST(r.Left, low, high)
  }
  return -1
}
