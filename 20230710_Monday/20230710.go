// Leetcode: 111. Minimum Depth of Binary Tree.
// https://leetcode.com/problems/minimum-depth-of-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 220 ms, faster than 23.92% of Go online submissions for Minimum
// Depth of Binary Tree.
// Memory Usage: 17.9 MB, less than 71.77% of Go online submissions for Minimum
// Depth of Binary Tree.
// 2023.07.12 Updated.
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
func minDepth(root *TreeNode) int {
	if nil == root {
		return 0
	}
	ans := 0
	q, nq := make([]*TreeNode, 0), make([]*TreeNode, 0)
	q = append(q, root)
	for 0 != len(q) {
		ans += 1
		n := len(q)
		for i := 0; i < n; i += 1 {
			x := q[0]
			q = q[1:]
			leaf := nil == x.Left && nil == x.Right
			if leaf {
				return ans
			}
			if nil != x.Left {
				nq = append(nq, x.Left)
			}
			if nil != x.Right {
				nq = append(nq, x.Right)
			}
		}
		q, nq = nq, q
	}
	return ans
}
