// Leetcode: 935. Knight Dialer.
// https://leetcode.com/problems/knight-dialer/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 19 ms, faster than 83.33% of Go online submissions for Knight
// Dialer.
// Memory Usage: 6.9 MB, less than 83.33% of Go online submissions for Knight
// Dialer.
// 2023.11.27 Daily Challenge.
package main

func knightDialer(n int) int {
	// Based on the second Leetcode's solution.
	jumps := [][]int{
		{4, 6},
		{6, 8},
		{7, 9},
		{4, 8},
		{3, 9, 0},
		{},
		{1, 7, 0},
		{2, 6},
		{1, 3},
		{2, 4},
	}
	mod := 1_000_000_007
	dp := make([][]int, n)
	for i := 0; i < n; i += 1 {
		dp[i] = []int{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
	}
	for i := 0; i < 10; i += 1 {
		dp[0][i] = 1
	}
	for i := 1; i < n; i += 1 {
		for sq := 0; sq < 10; sq += 1 {
			ans := 0
			for _, ns := range jumps[sq] {
				ans = (ans + dp[i-1][ns]) % mod
			}
			dp[i][sq] = ans
		}
	}
	ans := 0
	for i := 0; i < 10; i += 1 {
		ans = (ans + dp[n-1][i]) % mod
	}
	return ans
}
