// Leetcode: 1161. Maximum Level Sum of a Binary Tree.
// https://leetcode.com/problems/maximum-level-sum-of-a-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 112 ms, faster than 79.80% of Go online submissions for Maximum
// Level Sum of a Binary Tree.
// Memory Usage: 7.9 MB, less than 62.63% of Go online submissions for Maximum
// Level Sum of a Binary Tree.
// 2023.06.16 Updated.
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
func maxLevelSum(root *TreeNode) int {
	q := make([]*TreeNode, 1)
	current_level := 0
	q[0] = root
	max := root.Val
	ans := 1
	for 0 != len(q) {
		var nq []*TreeNode
		current_level += 1
		sum := 0
		for _, node := range q {
			sum += node.Val
			if nil != node.Left {
				nq = append(nq, node.Left)
			}
			if nil != node.Right {
				nq = append(nq, node.Right)
			}
		}
		q = nq
		if max < sum {
			max = sum
			ans = current_level
		}
	}
	return ans
}
