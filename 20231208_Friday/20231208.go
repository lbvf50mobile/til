// Leetcode: 606. Construct String from Binary Tree.
// https://leetcode.com/problems/construct-string-from-binary-tree/
// = = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 82.50% of Go online submissions for Construct
// String from Binary Tree.
// Memory Usage: 7.8 MB, less than 55.00% of Go online submissions for
// Construct String from Binary Tree.
// 2023.12.08 Daily Challenge.

package main

import "fmt"

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func tree2str(root *TreeNode) string {
	if nil == root {
		panic("Call on nil.")
	}
	a := root.Left
	b := root.Right
	if nil != a && nil != b {
		return fmt.Sprintf("%d(%s)(%s)", root.Val, tree2str(a), tree2str(b))
	} else if nil != a && nil == b {
		return fmt.Sprintf("%d(%s)", root.Val, tree2str(a))
	} else if nil == a && nil != b {
		return fmt.Sprintf("%d()(%s)", root.Val, tree2str(b))
	} else {
		return fmt.Sprintf("%d", root.Val)
	}
}
