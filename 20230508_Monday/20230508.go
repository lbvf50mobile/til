// Leetcode: 1572. Matrix Diagonal Sum.
// https://leetcode.com/problems/matrix-diagonal-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 13 ms, faster than 42.98% of Go online submissions for Matrix
// Diagonal Sum.
// Memory Usage: 5.6 MB, less than 26.32% of Go online submissions for Matrix
// Diagonal Sum.
// 2023.05.08 Daily Challenge.
package main

func diagonalSum(mat [][]int) int {
	n := len(mat)
	ans := 0
	for i := 0; i < n; i += 1 {
		ans += mat[i][i]
		ans += mat[i][n-1-i]
	}
	if 1 == n%2 {
		ans -= mat[n/2][n/2]
	}
	return ans
}
