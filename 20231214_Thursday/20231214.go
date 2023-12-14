// Leetcode: 2482. Difference Between Ones and Zeros in Row and Column.
// https://leetcode.com/problems/difference-between-ones-and-zeros-in-row-and-column/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 169 ms, faster than 90.00% of Go online submissions for Difference
// Between Ones and Zeros in Row and Column.
// Memory Usage: 18.5 MB, less than 50.00% of Go online submissions for
// Difference Between Ones and Zeros in Row and Column.
// 2023.12.14 Daily Challenge.

package main

func onesMinusZeros(grid [][]int) [][]int {
	g := grid
	m, n := len(g), len(g[0])
	sumRows := make([]int, m)
	sumCols := make([]int, n)

	// Sum Rows.
	for i := 0; i < m; i += 1 {
		sum := 0
		for j := 0; j < n; j += 1 {
			sum += g[i][j]
		}
		sumRows[i] = sum
	}
	// Sum Cols.
	for j := 0; j < n; j += 1 {
		sum := 0
		for i := 0; i < m; i += 1 {
			sum += g[i][j]
		}
		sumCols[j] = sum
	}
	// Fill the answer.
	ans := make([][]int, m)
	for i := 0; i < m; i += 1 {
		ans[i] = make([]int, n)
		or := sumRows[i] // Ones Row.
		zr := n - or     // Zeros Row.
		for j := 0; j < n; j += 1 {
			oc := sumCols[j] // Ones Column. <== Here!
			zc := m - oc     // Zeros Column.
			ans[i][j] = or + oc - zr - zc
		}
	}
	return ans
}
