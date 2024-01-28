// Leetcode: 1074. Number of Submatrices That Sum to Target.
// https://leetcode.com/problems/number-of-submatrices-that-sum-to-target/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 201 ms, faster than 20.00% of Go online submissions for Number of
// Submatrices That Sum to Target.
// Memory Usage: 14.7 MB, less than 20.00% of Go online submissions for Number
// of Submatrices That Sum to Target.
// 2024.01.28 Daily Challenge.

package main

func numSubmatrixSumTarget(matrix [][]int, target int) int {
	// Based on:
	// https://leetcode.com/problems/number-of-submatrices-that-sum-to-target/discuss/303750/JavaC%2B%2BPython-Find-the-Subarray-with-Target-Sum
	m, n := len(matrix), len(matrix[0])
	for _, row := range matrix {
		for i := 0; i < n-1; i += 1 {
			row[i+1] += row[i] // Nice!
		}
	}
	ans := 0
	for i := 0; i < n; i += 1 {
		for j := i; j < n; j += 1 {
			h := make(map[int]int)
			cur := 0
			h[0] = 1
			for k := 0; k < m; k += 1 {
				tmp := 0
				if i > 0 {
					tmp = matrix[k][i-1]
				}
				cur += matrix[k][j] - tmp
				ans += h[cur-target]
				h[cur] += 1
			}
		}
	}
	return ans
}
