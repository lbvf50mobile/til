// Leetcode: 543. Diameter of Binary Tree.
// https://leetcode.com/problems/diameter-of-binary-tree/

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func diameterOfBinaryTree(root *TreeNode) int {
	if nil == root {
		return 0
	}
	return dfs(root.Left, 1) + dfs(root.Right, 1)

}

func dfs(x *TreeNode, level int) int {
	if nil == x {
		return level - 1
	}
	return max(dfs(x.Left, level+1), dfs(x.Right, level+1))
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}
