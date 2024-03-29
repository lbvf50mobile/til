// Leetcode: 94. Binary Tree Inorder Traversal.
// https://leetcode.com/problems/binary-tree-inorder-traversal/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 79.77% of Go online submissions for Binary Tree
// Inorder Traversal.
// Memory Usage: 2 MB, less than 69.38% of Go online submissions for Binary
// Tree Inorder Traversal.
// 2023.12.09 Daily Challenge.

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func inorderTraversal(root *TreeNode) []int {
	ans := make([]int, 0)
	stack := make([]*TreeNode, 0)
	pnt := root
	// 1. Move left pushing into stack.
	// 2. If nil: Pop, Save in answer, set pointer on right of popped.
	for 0 < len(stack) || nil != pnt {
		// Not nil move left.
		if nil != pnt {
			stack = append(stack, pnt)
			pnt = pnt.Left

		} else {
			// Nil. Time to save and move right.
			n := len(stack)
			if 0 < n {
				pnt = stack[n-1]
				ans = append(ans, pnt.Val)
				stack = stack[0 : n-1]
				pnt = pnt.Right
			}
		}
	}
	return ans
}
