// Leetcode: 1143. Longest Common Subsequence.
// https://leetcode.com/problems/longest-common-subsequence/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 22 ms, faster than 33.93% of Go online submissions for Longest
// Common Subsequence.
// Memory Usage: 16.8 MB, less than 43.75% of Go online submissions for
// Longest Common Subsequence.
// 2024.01.25 Daily Challenge.

package main

var t1, t2 string
var dp [][]int
var m, n int

func longestCommonSubsequence(text1 string, text2 string) int {
	t1, t2 = text1, text2
	m, n = len(t1), len(t2)
	dp = make([][]int, m)
	for i := 0; i < m; i += 1 {
		dp[i] = make([]int, n)
	}
	for i := 0; i < m; i += 1 {
		for j := 0; j < n; j += 1 {
			if t1[i] == t2[j] {
				dp[i][j] = get(i-1, j-1) + 1
			} else {
				dp[i][j] = max(get(i-1, j), get(i, j-1))
			}
		}
	}
	return dp[m-1][n-1]
}

func get(i, j int) int {
	if i < 0 || j < 0 {
		return 0
	}
	if i >= m || j >= n {
		return 0
	}
	return dp[i][j]
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
