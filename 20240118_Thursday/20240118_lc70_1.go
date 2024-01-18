// Leetcode: 70. Climbing Stairs.
// https://leetcode.com/problems/climbing-stairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Climbing
// Stairs.
// Memory Usage: 2.1 MB, less than 10.29% of Go online submissions for
// Climbing Stairs.
// 2024.01.18 Daily Challenge.

package main

func climbStairs(n int) int {
	// Push DP.
	// Starting from zero.
	// amount is n+1+2 for throw.
	amount := n + 3
	dp := make([]int, amount)
	dp[0] = 1
	for i := 0; i <= n; i += 1 {
		dp[i+1] += dp[i]
		dp[i+2] += dp[i]
	}
	return dp[n]
}
