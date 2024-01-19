// Leetcode: 931. Minimum Falling Path Sum.
// https://leetcode.com/problems/minimum-falling-path-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms, faster than 76.98% of Go online submissions for Minimum
// Falling Path Sum.
// Memory Usage: 4.6 MB, less than 57.14% of Go online submissions for Minimum
// Falling Path Sum.
// 2024.01.19 Daily Challenge.

package main

var m, n int
var mx [][]int

func minFallingPathSum(matrix [][]int) int {
	// Pull DP. Select minimum sum for a current cell.
	mx = matrix
	m, n = len(mx), len(mx[0])
	for i := 1; i < m; i += 1 {
		for j := 0; j < n; j += 1 {
			mx[i][j] += minFromTop(i, j)
		}
	}

	return minInRow(m - 1)
}

func minFromTop(i, j int) int {
	ans := mx[i-1][j] // Just one above.
	// Check top left.
	if j-1 >= 0 && ans > mx[i-1][j-1] {
		ans = mx[i-1][j-1]
	}
	// Check top right.
	if j+1 < n && ans > mx[i-1][j+1] {
		ans = mx[i-1][j+1]
	}
	return ans
}

func minInRow(i int) int {
	ans := mx[i][0]
	for j := 0; j < n; j += 1 {
		if ans > mx[i][j] {
			ans = mx[i][j]
		}
	}
	return ans
}
