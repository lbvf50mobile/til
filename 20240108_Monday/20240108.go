// Leetcode: 938. Range Sum of BST.
// https://leetcode.com/problems/range-sum-of-bst/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 98 ms, faster than 21.50% of Go online submissions for Range Sum
// of BST.
// Memory Usage: 9.1 MB, less than 5.12% of Go online submissions for Range
// Sum of BST.
// 2024.01.08 Daily Challenge.

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func rangeSumBST(root *TreeNode, low int, high int) int {
	if nil == root {
		return 0
	}
	ans := 0
	curr := root.Val
	// Do take curr into consideration?
	if low <= curr && curr <= high {
		ans += curr
	}
	// Do move left?
	// Move left only if curr is bigger then the low.
	// Otherwise, no need to move left.
	if nil != root.Left && low < curr {
		ans += rangeSumBST(root.Left, low, high)
	}
	// Do move right?
	// Move right only if curr is less then the high.
	// Otherwise, no need to move right.
	if nil != root.Right && curr < high {
		ans += rangeSumBST(root.Right, low, high)
	}
	return ans
}
