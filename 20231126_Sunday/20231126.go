// Leetcode: 1727. Largest Submatrix With Rearrangements.
// https://leetcode.com/problems/largest-submatrix-with-rearrangements/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 125 ms, faster than 47.20% of Go online submissions for Largest
// Submatrix With Rearrangements.
// Memory Usage: 17.5 MB, less than 17.60% of Go online submissions for
// Largest Submatrix With Rearrangements.
// 2023.11.27 Updated.
package main

import (
	"sort"
)

func largestSubmatrix(matrix [][]int) int {
	// Based on the first Leetcode's solution.
	n, m := len(matrix), len(matrix[0])
	// Sum columns.
	for j := 0; j < m; j += 1 {
		for i := 1; i < n; i += 1 {
			if 0 == matrix[i][j] {
				continue
			}
			matrix[i][j] += matrix[i-1][j]
		}
	}
	ans := 0
	for i := 0; i < n; i += 1 {
		srtRow := make([]int, m)
		copy(srtRow, matrix[i])
		sort.Slice(srtRow, func(i, j int) bool {
			return srtRow[i] > srtRow[j]
		})
		for j := 0; j < m; j += 1 {
			tmp := srtRow[j] * (j + 1)
			if tmp > ans {
				ans = tmp
			}
		}
	}
	return ans
}
