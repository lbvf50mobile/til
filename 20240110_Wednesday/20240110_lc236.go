// Leetcode: 236. Lowest Common Ancestor of a Binary Tree.
// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/
// https://leetcode.com/discuss/interview-question/4519498/some-simple-but-impt-interview-topics-for-2024
// https://gist.github.com/lbvf50mobile/93939738b60c4ee4648a5b0d5d5b9b82
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 8 ms, faster than 63.02% of Go online submissions for Lowest
// Common Ancestor of a Binary Tree.
// Memory Usage: 7.4 MB, less than 37.58% of Go online submissions for Lowest
// Common Ancestor of a Binary Tree.
// 2024.01.10.

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */

func lowestCommonAncestor(root, p, q *TreeNode) *TreeNode {
	if nil == root {
		return root
	}
	if p == root {
		return root
	}
	if q == root {
		return root
	}
	l := lowestCommonAncestor(root.Left, p, q)
	r := lowestCommonAncestor(root.Right, p, q)
	if nil != l && nil != r {
		return root
	}
	if nil != l {
		return l
	}
	return r
}
