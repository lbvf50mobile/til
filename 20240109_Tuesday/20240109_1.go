// Leetcode: 872. Leaf-Similar Trees.
// https://leetcode.com/problems/leaf-similar-trees/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 71.85% of Go online submissions for Leaf-Similar
// Trees.
// Memory Usage: 2.5 MB, less than 52.52% of Go online submissions for
// Leaf-Similar Trees.
// 2024.01.09 Daily Challenge.

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */

var a, b []int

func leafSimilar(root1 *TreeNode, root2 *TreeNode) bool {
	a, b = make([]int, 0), make([]int, 0)
	a = inorder(root1, a)
	b = inorder(root2, b)
	return compare()
}

func inorder(root *TreeNode, leafs []int) []int {
	if nil == root {
		return leafs
	}
	if nil != root.Left {
		leafs = inorder(root.Left, leafs)
	}
	if nil == root.Left && nil == root.Right {
		leafs = append(leafs, root.Val)
	}
	if nil != root.Right {
		leafs = inorder(root.Right, leafs)
	}
	return leafs
}

func compare() bool {
	if len(a) != len(b) {
		return false
	}
	for i, v := range a {
		if v != b[i] {
			return false
		}
	}
	return true
}
