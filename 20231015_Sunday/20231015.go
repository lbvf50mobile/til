// Leetcode: 1269. Number of Ways to Stay in the Same Place After Some Steps.
// https://leetcode.com/problems/number-of-ways-to-stay-in-the-same-place-after-some-steps/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 12 ms, faster than 66.67% of Go online submissions for Number of
// Ways to Stay in the Same Place After Some Steps.
// Memory Usage: 6.8 MB, less than 66.67% of Go online submissions for Number of
// Ways to Stay in the Same Place After Some Steps.
// 2023.10.15 Daily Challenge.
package main

func numWays(steps int, arrLen int) int {
	// Based on:
	// https://leetcode.com/problems/number-of-ways-to-stay-in-the-same-place-after-some-steps/solution/
	mod := 1000000007
	if steps < arrLen {
		arrLen = steps
	}
	dp := make([][]int, arrLen)
	for i := 0; i < arrLen; i += 1 {
		dp[i] = make([]int, steps+1)
	}
	dp[0][0] = 1
	for r := 1; r <= steps; r += 1 {
		for c := arrLen - 1; c >= 0; c -= 1 {
			ans := dp[c][r-1]
			if c > 0 {
				ans = (ans + dp[c-1][r-1]) % mod
			}
			if c < arrLen-1 {
				ans = (ans + dp[c+1][r-1]) % mod
			}
			dp[c][r] = ans
		}
	}
	dp[0][0] = 1
	return dp[0][steps]

}
