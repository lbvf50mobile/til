// Leetcode: 100. Same Tree.
// https://leetcode.com/problems/same-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Same Tree.
// Memory Usage: 2.1 MB, less than 30.99% of Go online submissions for Same
// Tree.
// 2024.02.27 Redeemed 2024.02.26.
// https://gist.github.com/lbvf50mobile/e368fbdcfa1c4e7e3ff1b2b2f505192a

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func isSameTree(p *TreeNode, q *TreeNode) bool {
	if nil == p && nil == q {
		return true
	}
	if nil != p && nil == q {
		return false
	}
	if nil == p && nil != q {
		return false
	}
	if p.Val != q.Val {
		return false
	}
	return isSameTree(p.Left, q.Left) && isSameTree(p.Right, q.Right)
}
