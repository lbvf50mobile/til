// Leetcode: 1372. Longest ZigZag Path in a Binary Tree.
// https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 104 ms, faster than 95.00% of Go online submissions for Longest
// ZigZag Path in a Binary Tree.
// Memory Usage: 13 MB, less than 85.00% of Go online submissions for Longest
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
	// Based on Frank's Luo (https://leetcode.com/longluo/) solution.
	// https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree/solution/1868016
	max = 0
	dfs(root, 0, 0)
	dfs(root, 0, 0)
	return max
}

func dfs(x *TreeNode, l int, r int) {
	if nil == x {
		return
	}
	if max < l {
		max = l
	}
	if max < r {
		max = r
	}
	if nil != x.Left {
		dfs(x.Left, r+1, 0)
	}
	if nil != x.Right {
		dfs(x.Right, 0, l+1)
	}
}
