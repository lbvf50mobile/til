// Leetcode: 1335. Minimum Difficulty of a Job Schedule.
// https://leetcode.com/problems/minimum-difficulty-of-a-job-schedule/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 18 ms, faster than 76.19% of Go online submissions for Minimum
// Difficulty of a Job Schedule.
// Memory Usage: 2.6 MB, less than 85.71% of Go online submissions for Minimum
// Difficulty of a Job Schedule.
// 2023.12.29 Daily Challenge.

package main

func minDifficulty(jobDifficulty []int, d int) int {
	// Based on:
	// https://leetcode.com/problems/minimum-difficulty-of-a-job-schedule/discuss/490316/JavaC%2B%2BPython3-DP-O(nd)-Solution
	huge := 1073741824
	n := len(jobDifficulty)
	dp := make([][]int, d+1)
	for i := 0; i < (d + 1); i += 1 {
		dp[i] = make([]int, n+1)
		for j := 0; j <= (n - 1); j += 1 { // <= Here.
			dp[i][j] = huge
		}
	}
	for de := 1; de <= d; de += 1 { // 1..d
		for i := 0; i <= (n - de); i += 1 { // 0 .. n-de
			maxd := 0
			for j := i; j <= (n - de); j += 1 { // i..n-de
				maxd = max(maxd, jobDifficulty[j])
				a := dp[de][i]
				b := maxd + dp[de-1][j+1]
				dp[de][i] = min(a, b)
			}
		}
	}
	if dp[d][0] < huge {
		return dp[d][0]
	}
	return -1
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
