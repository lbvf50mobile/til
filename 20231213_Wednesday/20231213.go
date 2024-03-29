// Leetcode: 1582. Special Positions in a Binary Matrix.
// https://leetcode.com/problems/special-positions-in-a-binary-matrix/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 18 ms, faster than 41.18% of Go online submissions for Special
// Positions in a Binary Matrix.
// Memory Usage: 5.9 MB, less than 100.00% of Go online submissions for
// Special Positions in a Binary Matrix.
// 2023.12.13 Daily Challenge.

package main

func numSpecial(mat [][]int) int {
	// Map of special rows.
	// When column is perfect, prefect counter for colud be increased.
	m, n := len(mat), len(mat[0])
	ans := 0
	// 1. Mark special rows, rows with sum equal to one.
	rows := make([]bool, m)
	for i := 0; i < m; i += 1 {
		sum := 0
		for j := 0; j < n; j += 1 {
			sum += mat[i][j]
		}
		if 1 == sum {
			rows[i] = true
		}
	}
	// 2. Check does a coumn is a special one.
	// Save row index of last one and check does this row is a special one.
	for j := 0; j < n; j += 1 {
		sum := 0
		one := 0 // Row for a last one in the column.
		for i := 0; i < m; i += 1 {
			sum += mat[i][j]
			if 1 == mat[i][j] {
				one = i
			}
			if 2 == sum {
				break
			}
		}
		if 1 == sum && rows[one] {
			ans += 1
		}
	}
	return ans
}
