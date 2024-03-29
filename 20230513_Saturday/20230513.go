// Leetcode: 2466. Count Ways To Build Good Strings.
// https://leetcode.com/problems/count-ways-to-build-good-strings/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 71.43% of Go online submissions for Count Ways To
// Build Good Strings.
// Memory Usage: 6 MB, less than 85.71% of Go online submissions for Count Ways
// To Build Good Strings.
// 2023.05.13 Daily Challenge.
package main

func countGoodStrings(low int, high int, zero int, one int) int {
	dp := make([]int, 1+high)
	dp[0] = 1
	mod := 1_000_000_007
	sum := 0
	for nd := 1; nd <= high; nd += 1 {
		if nd >= zero {
			dp[nd] = (dp[nd] + dp[nd-zero]) % mod
		}
		if nd >= one {
			dp[nd] = (dp[nd] + dp[nd-one]) % mod
		}
		if low <= nd && nd <= high {
			sum = (sum + dp[nd]) % mod
		}
	}
	return sum
}
