// Leetcode: 501. Find Mode in Binary Search Tree.
// https://leetcode.com/problems/find-mode-in-binary-search-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 12 ms, faster than 37.88% of Go online submissions for Find Mode in
// Binary Search Tree.
// Memory Usage: 6.7 MB, less than 45.45% of Go online submissions for Find Mode
// in Binary Search Tree.
// 2023.11.01 Daily Challenge.
package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
var c map[int]int

func findMode(root *TreeNode) []int {
	c = make(map[int]int)
	dfs(root)
	if 0 == len(c) {
		return []int{}
	}
	flag := true
	max := 0
	for _, v := range c {
		if flag {
			max = v
			flag = false
		}
		if v > max {
			max = v
		}
	}
	ans := make([]int, 0)
	for i, v := range c {
		if v == max {
			ans = append(ans, i)
		}
	}
	return ans
}

func dfs(root *TreeNode) {
	if nil == root {
		return
	}
	c[root.Val] += 1
	dfs(root.Left)
	dfs(root.Right)
}
