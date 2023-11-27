// Leetcode: 935. Knight Dialer.
// https://leetcode.com/problems/knight-dialer/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 46 ms, faster than 50.00% of Go online submissions for Knight
// Dialer.
// Memory Usage: 7.8 MB, less than 50.00% of Go online submissions for Knight
// Dialer.
// 2023.11.27 Daily Challenge.
package main

var jumps = [][]int{
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
var memo [][]int
var the_n int
var mod = 1_000_000_007

func knightDialer(n int) int {
	// Based on the first Leetcode's solution.
	the_n = n
	memo = make([][]int, the_n+1) // <= Here!
	for i := 0; i < n+1; i += 1 {
		memo[i] = make([]int, 10)
	}
	ans := 0
	for i := 0; i < 10; i += 1 {
		ans = (ans + dp(the_n-1, i)) % mod
	}
	return ans
}

// r - remain.
// s - square.
func dp(r, s int) int {
	if 0 == r {
		return 1
	}
	if 0 != memo[r][s] {
		return memo[r][s]
	}
	ans := 0
	for _, ns := range jumps[s] {
		ans = (ans + dp(r-1, ns)) % mod
	}
	memo[r][s] = ans
	return ans
}
