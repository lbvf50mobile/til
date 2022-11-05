// Leetcode: 2236. Root Equals Sum of Children.
// https://leetcode.com/problems/root-equals-sum-of-children/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 6 ms, faster than 13.06% of Go online submissions for Root Equals Sum of Children.
// Memory Usage: 2.1 MB, less than 71.64% of Go online submissions for Root Equals Sum of Children.
// 2022.11.06 Saturday.
// https://gist.github.com/lbvf50mobile/345c113d3dd84457f2b4d690ff58485a
// https://leetcode.com/problems/root-equals-sum-of-children/discuss/2782421/Go%3A-Compare-root-value-with-sum-of-left-and-right-values.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func checkTree(root *TreeNode) bool {
  return root.Val == root.Left.Val + root.Right.Val
}
