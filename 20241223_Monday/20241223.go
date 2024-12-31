// Leetcode: 2471. Minimum Number of Operations to Sort a Binary Tree by Level
// https://leetcode.com/problems/minimum-number-of-operations-to-sort-a-binary-tree-by-level/editorial/?envType=daily-question&envId=2024-12-23
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 105 ms Beats 43.83%
// Memory: 23.21 MB Beats 52.77%
// 2024.12.23 Daily Challenge.
// 2024.12.31 Implemented.
// Translated from the Leetcode's solution.


package main

import (
	"sort"
)

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */

func minimumOperations(root *TreeNode) int {
	q := []*TreeNode{root}
	ans := 0
	// Process tree level by level using BFS
	for len(q) > 0 { // Here was an error.
		size := len(q)
		vls := []int{}
		for i := 0; i < size; i += 1 {
			nd := q[0]
			q = q[1:]
			vls = append(vls, nd.Val)
			if nil != nd.Left {
				q = append(q, nd.Left)
			}
			if nil != nd.Right {
				q = append(q, nd.Right)
			}
		}
		// Add miniumu swaps needed for current level
		ans += MinSwaps(vls)

	}
	return ans
}

func MinSwaps(orig []int) int {

	ans := 0
	trgt := make([]int, len(orig))
	copy(trgt, orig)
	sort.Ints(trgt)
	pos := make(map[int]int)
	for i, v := range orig {
		pos[v] = i
	}
	for i, v := range orig {
		if v != trgt[i] {
			ans += 1
		}
		curPos := pos[trgt[i]]
		pos[orig[i]] = curPos
		orig[curPos] = orig[i]
	}
	return ans
}
