// Leetcode: 70. Climbing Stairs.
// https://leetcode.com/problems/climbing-stairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 77.88% of Go online submissions for Climbing
// Stairs.
// Memory Usage: 2 MB, less than 10.23% of Go online submissions for Climbing
// Stairs.
// 2024.01.18 Daily Challenge.

package main

func climbStairs(n int) int {
	// Pull DP.
	// Add two stairs 0 and -1.
	amount := n + 2
	dp := make([]int, amount)
	dp[0], dp[1], dp[2] = 1, 1, 1
	// But diff is 1.
	// -1 => 0;
	// 0 => 1;
	// 1 => 2;
	// 2 => 3;
	// Starting from 2;
	for i := 3; i < amount; i += 1 {
		dp[i] = dp[i-1] + dp[i-2]
	}
	return dp[amount-1]
}
