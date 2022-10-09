// Leetcode: 653. Two Sum IV - Input is a BST.
// https://leetcode.com/problems/two-sum-iv-input-is-a-bst/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 31 ms, faster than 75.12% of Go online submissions for Two Sum IV - Input is a BST.
// Memory Usage: 8 MB, less than 45.16% of Go online submissions for Two Sum IV - Input is a BST.
// 2022.10.09 Daily Challenge.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
var ka int
var h map[int]bool
var answer bool
func findTarget(root *TreeNode, k int) bool {
  ka = k
  answer = false
  h = make(map[int]bool)
  dfs(root)
  return answer
}
func dfs(node *TreeNode) {
  if answer {return}
  if nil == node {return}
  if h[ka - node.Val] {
    answer = true
    return
  }
  h[node.Val] = true
  dfs(node.Left)
  dfs(node.Right)
}
