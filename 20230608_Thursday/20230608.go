// Leetcode: 1351. Count Negative Numbers in a Sorted Matrix.
// https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 9 ms, faster than 95.58% of Go online submissions for Count Negative
// Numbers in a Sorted Matrix.
// Memory Usage: 6.7 MB, less than 7.96% of Go online submissions for Count
// Negative Numbers in a Sorted Matrix. package main
// 2023.06.08 Daily Challenge.

import ()

func countNegatives(grid [][]int) int {
	g := grid
	a, b := len(grid), len(grid[0])
	border := 0
	ans := 0
	// All negative element are in bottom-right part.
	// Iterate over rows.
	for i := a - 1; 0 <= i; i -= 1 {
		// Because non-icreasing order move from right.
		for j := b - 1; border <= j; j -= 1 {
			if g[i][j] < 0 {
				ans += 1
			} else {
				// Because columns are non-increasing
				// this column will conain only positive elements.
				border = (j + 1)
				break
			}
		}
		// All columns has non negative elements now.
		// No reason to continue main loop.
		if b == border {
			break
		}
	}
	return ans
}
