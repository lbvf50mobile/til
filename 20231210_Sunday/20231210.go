// Leetcode: 867. Transpose Matrix.
// https://leetcode.com/problems/transpose-matrix/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Chirist!
// = = = = = = = = = = = = = =
// Runtime: 9 ms, faster than 52.24% of Go online submissions for Transpose
// Matrix.
// Memory Usage: 6.4 MB, less than 56.72% of Go online submissions for
// Transpose Matrix.
// 2023.12.10 Daily Challenge.

package main

func transpose(matrix [][]int) [][]int {
	// Input: NxM.
	n, m := len(matrix), len(matrix[0])
	// Output: MxN.
	ans := make([][]int, m)
	for j := 0; j < m; j += 1 {
		ans[j] = make([]int, n) // New Row, has as many columns as input rows.
	}
	// Read input[i][j], write output[j][i].
	for i := 0; i < n; i += 1 { // Iterate over input rows.
		for j := 0; j < m; j += 1 { // Iterate over input columns.
			// Output Row = Input Columns
			// Output Columns = Input Rows
			ans[j][i] = matrix[i][j]
		}
	}
	return ans
}
