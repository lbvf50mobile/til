// Leetcode: 515. Find Largest Value in Each Tree Row.
// https://leetcode.com/problems/find-largest-value-in-each-tree-row/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 4 ms, faster than 90.63% of Go online submissions for Find Largest
// Value in Each Tree Row.
// Memory Usage: 5.9 MB, less than 75.00% of Go online submissions for Find
// Largest Value in Each Tree Row.
// 2023.10.24 Daily Challenge.
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
	superMin := -2147483648
	if nil == root {
		return []int{}
	}
	ans := make([]int, 0)
	q := []*TreeNode{root}
	for 0 < len(q) {
		max := superMin
		tmpQ := []*TreeNode{}
		for _, n := range q {
			val := n.Val
			if max < val {
				max = val
			}
			if nil != n.Left {
				tmpQ = append(tmpQ, n.Left)
			}
			if nil != n.Right {
				tmpQ = append(tmpQ, n.Right)
			}
		}
		ans = append(ans, max)
		q = tmpQ
	}
	return ans
}
