// Leetcode: 530. Minimum Absolute Difference in BST.
// https://leetcode.com/problems/minimum-absolute-difference-in-bst/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 17 ms, faster than 18.44% of Go online submissions for Minimum
// Absolute Difference in BST.
// Memory Usage: 7.1 MB, less than 17.73% of Go online submissions for Minimum
// Absolute Difference in BST.
// 2023.06.15 Update.
package main

import (
	"fmt"
)

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func getMinimumDifference(root *TreeNode) int {
	tmp := root
	flag := false
	flag2 := false
	var ans int
	var prev int
	stack := make([]*TreeNode, 0)
	for nil != tmp || 0 != len(stack) {
		if nil != tmp {
			stack = append(stack, tmp)
			tmp = tmp.Left
		} else {
			last := len(stack) - 1
			tmp = stack[last]
			stack = stack[0:last]
			if flag && !flag2 {
				ans = tmp.Val - prev
				flag2 = true
			}
			if flag && flag2 {
				diff := tmp.Val - prev
				if diff < ans {
					ans = diff
				}
			}
			flag = true
			prev = tmp.Val
			tmp = tmp.Right
		}
	}
	return ans
}
