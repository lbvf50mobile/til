// Leetcode: 343. Integer Break.
// https://leetcode.com/problems/integer-break/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 83.78% of Go online submissions for Integer Break.
// Memory Usage: 1.9 MB, less than 48.65% of Go online submissions for Integer
// Break.
// 2023.10.06 Daily Challenge.
package main

func integerBreak(n int) int {
	// Based on:
	// https://leetcode.com/problems/integer-break/solution/
	if n <= 3 {
		return n - 1
	}
	dp := make([]int, n+1)
	dp[1], dp[2], dp[3] = 1, 2, 3
	for j := 4; j <= n; j += 1 {
		ans := j
		for i := 2; i < j; i += 1 {
			tmp := i * dp[j-i]
			if ans < tmp {
				ans = tmp
			}
		}
		dp[j] = ans
	}
	return dp[n]
}
