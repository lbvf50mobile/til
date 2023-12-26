// Leetcode: 1155. Number of Dice Rolls With Target Sum.
// https://leetcode.com/problems/number-of-dice-rolls-with-target-sum/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 12 ms, faster than 53.85% of Go online submissions for Number of
// Dice Rolls With Target Sum.
// Memory Usage: 5.5 MB, less than 19.23% of Go online submissions for Number
// of Dice Rolls With Target Sum.
// 2023.12.26 Daily Challenge.

package main

func numRollsToTarget(n int, k int, target int) int {
	mod := 1000000007
	dp := make([][]int, n+1) // One row - one dice, + imagenery one.
	for i := 0; i < n+1; i += 1 {
		dp[i] = make([]int, target+1) // Number of sum to reach.
	}
	dp[0][0] = 1 // Only one way to get to the zero.
	// Throw each dice.
	for i := 1; i < n+1; i += 1 {
		// Throw position.
		for j := 0; j < target; j += 1 {
			// dice value.
			for v := 1; v <= k; v += 1 {
				if j+v <= target {
					dp[i][j+v] = (dp[i][j+v] + dp[i-1][j]) % mod
				}
			}
		}
	}
	return dp[n][target]
}
