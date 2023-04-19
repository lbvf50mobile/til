// Leetcode: 1372. Longest ZigZag Path in a Binary Tree.
// https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 128 ms, faster than 40.00% of Go online submissions for Longest
// ZigZag Path in a Binary Tree.
// Memory Usage: 13.8 MB, less than 65.00% of Go online submissions for Longest
// ZigZag Path in a Binary Tree.
// 2023.04.19 Daily Challenge.
package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
var max int

func longestZigZag(root *TreeNode) int {
	// Based on Leetcode's solution.
	max = 0
	dfs(root, true, 0)
	dfs(root, false, 0)
	return max
}

func dfs(x *TreeNode, lft bool, n int) {
	if nil == x {
		return
	}
	if max < n {
		max = n
	}
	if lft {
		dfs(x.Left, true, 1)
		dfs(x.Right, false, n+1)
	} else {
		dfs(x.Left, true, n+1)
		dfs(x.Right, false, 1)
	}
}
