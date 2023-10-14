// Leetcode: 2742. Painting the Walls.
// https://leetcode.com/problems/painting-the-walls/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 54 ms, faster than 55.56% of Go online submissions for Painting the
// Walls.
// Memory Usage: 8.5 MB, less than 33.33% of Go online submissions for Painting
// the Walls.
// 2023.10.14 Daily Challenge.
package main

func paintWalls(cost []int, time []int) int {
	c := cost
	n := len(c)
	dp := make([][]int, n+1)
	inf := make([][]bool, n+1)
	for i := 0; i <= n; i += 1 {
		dp[i] = make([]int, n+1)
		inf[i] = make([]bool, n+1)
	}
	for i := 1; i <= n; i += 1 {
		inf[n][i] = true
	}
	for i := n - 1; i >= 0; i -= 1 {
		for r := 1; r <= n; r += 1 {
			tmp := max(0, r-1-time[i])

			pinf := inf[i+1][tmp]
			dinf := inf[i+1][r]

			paint := c[i] + dp[i+1][tmp]
			dont_paint := dp[i+1][r]

			if pinf && dinf {
				inf[i][r] = true
			} else if pinf {
				dp[i][r] = dont_paint
				inf[i][r] = false
			} else if dinf {
				dp[i][r] = paint
				inf[i][r] = false
			} else {
				dp[i][r] = min(paint, dont_paint)
				inf[i][r] = false
			}
		}
	}
	return dp[0][n]
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
