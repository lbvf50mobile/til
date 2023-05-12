// Leetcode: 2140. Solving Questions With Brainpower.
// https://leetcode.com/problems/solving-questions-with-brainpower/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 256 ms, faster than 64.71% of Go online submissions for Solving
// Questions With Brainpower.
// Memory Usage: 20.5 MB, less than 76.47% of Go online submissions for Solving
// Questions With Brainpower.
// 2023.05.12 Daily Challenge.
package main

func mostPoints(questions [][]int) int64 {
	// Based on:
	// https://leetcode.com/problems/solving-questions-with-brainpower/solution/
	n := len(questions)
	l := n - 1
	dp := make([]int, n)
	dp[l] = questions[l][0]
	for i := n - 2; i >= 0; i -= 1 {
		dp[i] = questions[i][0]
		skip := questions[i][1]
		if i+skip+1 < n {
			dp[i] += dp[i+skip+1]
		}
		if dp[i] < dp[i+1] {
			dp[i] = dp[i+1]
		}
	}
	return int64(dp[0])
}
