// Leetcode: 629. K Inverse Pairs Array.
// https://leetcode.com/problems/k-inverse-pairs-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1230 ms, faster than 50.00% of Go online submissions for K Inverse
// Pairs Array.
//Memory Usage: 23.5 MB, less than 100.00% of Go online submissions for K
//Inverse Pairs Array.
// 2024.01.27 Daily Challenge.

package main

var mod = 1000000007

func kInversePairs(n int, k int) int {
	// Based on:
	// https://leetcode.com/problems/k-inverse-pairs-array/discuss/846076/C%2B%2B-4-solutions-with-picture
	dp := make([][]int, 1001)
	for i := 0; i < 1001; i += 1 {
		dp[i] = make([]int, 1001)
	}
	dp[0][0] = 1
	for nn := 1; nn <= n; nn += 1 {
		for kk := 0; kk <= k; kk += 1 {
			for i := 0; i <= min(kk, nn-1); i += 1 {
				dp[nn][kk] = (dp[nn][kk] + dp[nn-1][kk-i]) % mod
			}
		}
	}
	return dp[n][k]
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
