// Leetcode: 543. Diameter of Binary Tree.
// https://leetcode.com/problems/diameter-of-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms
// Memory Usage: 4.6 MB
// 2024.02.27 Daily Challenge.

package main

var ans int

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func diameterOfBinaryTree(root *TreeNode) int {
	ans = 0
	if nil == root {
		return ans
	}
	a, b := dfs(root.Left)+1, dfs(root.Right)+1
	curr := a + b
	if curr > ans {
		ans = curr
	}
	return ans
}

func dfs(x *TreeNode) int {
	if nil == x {
		return -1
	}
	a, b := dfs(x.Left)+1, dfs(x.Right)+1
	curr := a + b
	if curr > ans {
		ans = curr
	}
	return max(a, b)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
