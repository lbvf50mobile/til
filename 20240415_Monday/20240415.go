// Leetcode: 129. Sum Root to Leaf Numbers.
// https://leetcode.com/problems/sum-root-to-leaf-numbers/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Sum Root to
// Leaf Numbers.
// Memory Usage: 2.4 MB, less than 6.15% of Go online submissions for Sum Root
// to Leaf Numbers.
// 2024.04.15 Daily Challenge.

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func sumNumbers(root *TreeNode) int {
	// Number goes down, sum goes up.
	// DFS is used.
	return dfs(root, 0)
}

func dfs(x *TreeNode, val int) int {
	if nil == x {
		return 0
	}
	val = val*10 + x.Val
	ans := 0
	if nil == x.Left && nil == x.Right {
		return val
	} else {
		ans += dfs(x.Left, val) + dfs(x.Right, val)
	}
	return ans
}
