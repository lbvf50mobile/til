// Leetcode: 404. Sum of Left Leaves.
// https://leetcode.com/problems/sum-of-left-leaves/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 73.50% of Go online submissions for Sum of Left
// Leaves.
// Memory Usage: 2.8 MB, less than 45.50% of Go online submissions for Sum of
// Left Leaves.
// 2024.04.14 Daily Challenge.

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func sumOfLeftLeaves(root *TreeNode) int {
	// Dfs method that takes pointer to int and a bool flag "is it a left
	// child?".
	ans := 0
	dfs(root, false, &ans)
	return ans
}
func dfs(x *TreeNode, left bool, sum *int) {
	if nil == x {
		return
	}
	// Only left leafs!
	if left && nil == x.Left && nil == x.Right {
		*sum += x.Val
		return
	}
	dfs(x.Left, true, sum)
	dfs(x.Right, false, sum)
}
