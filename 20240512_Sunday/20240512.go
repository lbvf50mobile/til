// Leetcode: 2373. Largest Local Values in a Matrix.
// https://leetcode.com/problems/largest-local-values-in-a-matrix/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms, faster than 57.14% of Go online submissions for Largest
// Local Values in a Matrix.
// Memory Usage: 6.3 MB, less than 75.00% of Go online submissions for Largest
// Local Values in a Matrix.
// 2024.05.12 Daily Challenge.

package main

func largestLocal(grid [][]int) [][]int {
	n := len(grid)
	ans := make([][]int, n-2)
	for i, _ := range ans {
		ans[i] = make([]int, n-2)
	}
	for i := 0; i < n-2; i += 1 {
		for j := 0; j < n-2; j += 1 {
			max := grid[i][j]
			for ii := i; ii < i+3; ii += 1 {
				for jj := j; jj < j+3; jj += 1 {
					tmp := grid[ii][jj]
					if tmp > max {
						max = tmp
					}
				}
			}
			ans[i][j] = max
		}
	}
	return ans
}
