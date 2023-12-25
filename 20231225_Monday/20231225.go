// Leetcode: 91. Decode Ways.
// https://leetcode.com/problems/decode-ways/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 61.69% of Go online submissions for Decode Ways.
// Memory Usage: 2 MB, less than 70.56% of Go online submissions for Decode
// Ways.
// 2023.12.25 Daily Challenge.

package main

func numDecodings(s string) int {
	// The solution is Push DP, the PD size is one element bigger than the
	// input, each element shows how many ways to reach it from the begining.
	n := len(s)
	dp := make([]int, n+1)
	// There is only 1 way to reach a first element.
	dp[0] = 1
	// Code for 1 and 2 symbols.
	one, two := -1, -1
	// Zeros couner.
	zeros := 0
	// Optimization.
	if '0' == s[0] {
		return 0
	}
	// Push values, skip iteration if 0.
	for i, v := range s {
		if 2 == zeros {
			return 0
		}
		// Skip leading zeros.
		if '0' == v {
			zeros += 1
			continue
		}
		zeros = 0
		one = int(v - '0')
		// Any number exept 0, push it's value forward.
		dp[i+1] += dp[i]
		two = -1
		if i < n-1 {
			two = one*10 + int(s[i+1]-'0')
		}
		if 10 <= two && two <= 26 {
			dp[i+2] += dp[i]
		}
	}
	// 'End' represented as a position.
	return dp[n]
}
