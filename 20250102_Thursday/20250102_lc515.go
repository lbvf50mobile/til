// Leetcode: 515 Find Largest Value in Each Tree Row
// https://leetcode.com/problems/find-largest-value-in-each-tree-row/editorial/?envType=daily-question&envId=2024-12-25
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 7.82 MB Beats 67.50%
// https://gist.github.com/lbvf50mobile/176ffc811f81137defe738510a84522b

package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */

func largestValues(root *TreeNode) []int {
	if nil == root { // Here was an error.
		return []int{}
	}
	ans := []int{}
	q := []*TreeNode{root}
	for 0 != len(q) {
		size := len(q)
		cur, rowMax := 0, 0
		for i := 0; i < size; i += 1 {
			node := q[0]
			q = q[1:]
			cur = node.Val
			if 0 == i {
				rowMax = cur
			} else {
				rowMax = max(rowMax, cur)
			}
			if nil != node.Left {
				q = append(q, node.Left)
			}
			if nil != node.Right {
				q = append(q, node.Right)
			}
		}
		ans = append(ans, rowMax)
	}
	return ans
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
