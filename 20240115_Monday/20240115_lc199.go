// Leetcode: 199. Binary Tree Right Side View.
// https://leetcode.com/problems/binary-tree-right-side-view/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 63.52% of Go online submissions for Binary Tree
// Right Side View.
// Memory Usage: 2.3 MB, less than 14.84% of Go online submissions for Binary
// Tree Right Side View.
// 2024.01.15.

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func rightSideView(root *TreeNode) []int {
	ans := make([]int, 0)
	if nil == root {
		return ans
	}
	q := make([]*TreeNode, 1)
	q[0] = root
	for 0 != len(q) {
		nq := make([]*TreeNode, 0)
		ans = append(ans, q[len(q)-1].Val)
		for _, v := range q {
			if nil != v.Left {
				nq = append(nq, v.Left)
			}
			if nil != v.Right {
				nq = append(nq, v.Right)
			}
		}
		q = nq
	}
	return ans
}
