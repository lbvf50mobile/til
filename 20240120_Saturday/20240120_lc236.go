// Leetcode: 236. Lowest Common Ancestor of a Binary Tree.
// https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 10 ms, faster than 55.50% of Go online submissions for Lowest
// Common Ancestor of a Binary Tree.
// Memory Usage: 6.9 MB, less than 98.30% of Go online submissions for Lowest
// Common Ancestor of a Binary Tree.
// 2024.01.20.
// https://gist.github.com/lbvf50mobile/a303f3cffdead9623d6ca48172e03ff5

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
	if root == p {
		return p
	}
	if root == q {
		return q
	}
	l := lowestCommonAncestor(root.Left, p, q)
	r := lowestCommonAncestor(root.Right, p, q)
	if nil != l && nil != r {
		return root
	}
	if nil == l && nil == r {
		return nil
	}
	if nil != l {
		return l
	}
	if nil != r {
		return r
	}
	panic("Unpredicted result.")
}
