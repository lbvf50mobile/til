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

type Leafs struct {
	values []int
}

var a, b []int

func leafSimilar(root1 *TreeNode, root2 *TreeNode) bool {
	aLeafs, bLeafs := Leafs{make([]int, 0)}, Leafs{make([]int, 0)}
	inorder(root1, &aLeafs)
	inorder(root2, &bLeafs)
	a, b = aLeafs.values, bLeafs.values
	return compare()
}

func inorder(root *TreeNode, leafs *Leafs) {
	if nil == root {
		return
	}
	if nil != root.Left {
		inorder(root.Left, leafs)
	}
	if nil == root.Left && nil == root.Right {
		leafs.values = append(leafs.values, root.Val)
	}
	if nil != root.Right {
		inorder(root.Right, leafs)
	}
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
