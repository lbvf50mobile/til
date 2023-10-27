// Leetcode: 5. Longest Palindromic Substring.
// https://leetcode.com/problems/longest-palindromic-substring/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 36 ms, faster than 48.09% of Go online submissions for Longest
// Palindromic Substring.
// Memory Usage: 7.3 MB, less than 24.81% of Go online submissions for Longest
// Palindromic Substring.
// 2023.10.27 Daily Challenge.
package main

func longestPalindrome(s string) string {
	// Based on:
	// https://leetcode.com/problems/longest-palindromic-substring/solution/
	n := len(s)
	dp := make([][]bool, n)
	ans := []int{0, 0}
	for i, _ := range dp {
		dp[i] = make([]bool, n)
	}
	for i := 0; i < n; i += 1 {
		dp[i][i] = true
	}
	for i := 0; i < n-1; i += 1 {
		if s[i] == s[i+1] {
			dp[i][i+1] = true
			ans[0], ans[1] = i, i+1
		}
	}
	for diff := 2; diff < n; diff += 1 {
		for i := 0; i < n-diff; i += 1 {
			j := i + diff
			if s[i] == s[j] && dp[i+1][j-1] {
				dp[i][j] = true
				ans[0], ans[1] = i, j
			}
		}
	}
	return s[ans[0] : ans[1]+1]
}
