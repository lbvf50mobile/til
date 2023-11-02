// Leetcode: 2265. Count Nodes Equal to Average of Subtree.
// https://leetcode.com/problems/count-nodes-equal-to-average-of-subtree
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 83.33% of Go online submissions for Count Nodes
// Equal to Average of Subtree.
// Memory Usage: 4.3 MB, less than 88.33% of Go online submissions for Count
// Nodes Equal to Average of Subtree.
// 2023.11.02 Daily Challenge

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */

func averageOfSubtree(root *TreeNode) int {
	_, _, ans := dfs(root)
	return ans
}

// Return: Sum, NodesAmount, ans.
func dfs(x *TreeNode) (int, int, int) {
	if nil == x {
		return 0, 0, 0
	}
	s1, na1, ans1 := dfs(x.Left)
	s2, na2, ans2 := dfs(x.Right)
	s := s1 + s2 + x.Val 
	na := na1 + na2 + 1
	av := s / na
	ans := ans1 + ans2
	if av == x.Val {
		ans += 1
	}
	return s, na, ans
}
