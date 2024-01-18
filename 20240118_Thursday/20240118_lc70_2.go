// Leetcode: 70. Climbing Stairs.
// https://leetcode.com/problems/climbing-stairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 77.62% of Go online submissions for Climbing
// Stairs.
// Memory Usage: 1.9 MB, less than 100.00% of Go online submissions for
// Climbing Stairs.
// 2024.01.18 Daily Challenge.

package main

func climbStairs(n int) int {
	// Pull DP 3 vars.
	if 1 == n {
		return 1
	}
	if 2 == n {
		return 2
	}
	a, b, c := 1, 2, 0
	for i := 3; i <= n; i += 1 {
		c = a + b
		a, b = b, c
	}
	return c
}
