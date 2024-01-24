// Leetcode: 1457. Pseudo-Palindromic Paths in a Binary Tree.
// https://leetcode.com/problems/pseudo-palindromic-paths-in-a-binary-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 227 ms, faster than 62.50% of Go online submissions for
// Pseudo-Palindromic Paths in a Binary Tree.
// Memory Usage: 26 MB, less than 37.50% of Go online submissions for
// Pseudo-Palindromic Paths in a Binary Tree.
// 2024.01.24 Daily Challenge.

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
type Count struct {
	cntr []int
	size int
}

var count *Count

func pseudoPalindromicPaths(root *TreeNode) int {
	if nil == root {
		return 0
	}
	count = &Count{make([]int, 9), 0} // <= Here.
	return dfs(root)
}

func dfs(x *TreeNode) int {
	// is pseudo_palindrome.
	// Or sum of them.
	ans := 0
	// Add changes.
	v := x.Val
	l, r := x.Left, x.Right
	count.size += 1
	count.cntr[v-1] += 1

	// Check leaf.
	if nil == l && nil == r { // <= Here.
		if isPseudoPalindrome() {
			ans += 1
		}
	} else {
		if nil != l {
			ans += dfs(l)
		}
		if nil != r {
			ans += dfs(r)
		}
	}
	// Remove changes.
	count.size -= 1
	count.cntr[v-1] -= 1
	// return.
	return ans
}

func isPseudoPalindrome() bool {
	even, odd := 0, 0
	for _, v := range count.cntr {
		if 0 == v%2 {
			even += 1
		} else {
			odd += 1
		}
	}
	if 0 == odd {
		return true
	}
	if 1 == odd && 1 == count.size%2 {
		return true
	}
	return false
}
