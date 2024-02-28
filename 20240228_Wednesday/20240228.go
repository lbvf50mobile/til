// Leetcode: 513. Find Bottom Left Tree Value.
// https://leetcode.com/problems/find-bottom-left-tree-value/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 86.54% of Go online submissions for Find Bottom
// Left Tree Value.
// Memory Usage: 5.4 MB, less than 100.00% of Go online submissions for Find
// Bottom Left Tree Value.
// 2024.02.28 Daily Challenge.

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */

var maxLevel int
var ans int

func findBottomLeftValue(root *TreeNode) int {
	ans = 0
	maxLevel = -1
	dfs(root, 1)
	return ans
}

func dfs(x *TreeNode, level int) {
	if nil == x {
		return
	}
	// First go left.
	dfs(x.Left, level+1)
	// First node in this row.
	if maxLevel < level {
		ans = x.Val
		maxLevel = level
	}
	dfs(x.Right, level+1)
}
