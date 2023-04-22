// Leetcode: 1312. Minimum Insertion Steps to Make a String Palindrome.
// https://leetcode.com/problems/minimum-insertion-steps-to-make-a-string-palindrome/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 16 ms, faster than 66.67% of Go online submissions for Minimum
// Insertion Steps to Make a String Palindrome.
// Memory Usage: 9.5 MB, less than 33.33% of Go online submissions for Minimum
// Insertion Steps to Make a String Palindrome.
// 2023.04.22 Daily Challenge.
package main

import "fmt"

func minInsertions(s string) int {
	// Based on the Leetcode's solution.
	n := len(s)
	sr := ""
	for _, x := range s {
		sr = string(x) + sr
	}
	return n - lcs(s, sr, n)
}

func lcs(s1, s2 string, n int) int {
	dp := make([][]int, n+1)
	for i := 0; i < n+1; i += 1 {
		dp[i] = make([]int, n+1)
	}
	for i := 0; i <= n; i += 1 {
		for j := 0; j <= n; j += 1 {
			if 0 == i || j == 0 {
				dp[i][j] = 0
			} else if s1[i-1] == s2[j-1] {
				dp[i][j] = 1 + dp[i-1][j-1]
			} else {
				dp[i][j] = max(dp[i-1][j], dp[i][j-1])
			}
		}
	}
	return dp[n][n]
}

func max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
