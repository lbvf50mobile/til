// Leetcode: 1137. N-th Tribonacci Number.
// https://leetcode.com/problems/n-th-tribonacci-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 78.71% of Go online submissions for N-th
// Tribonacci Number.
// Memory Usage: 2.1 MB, less than 68.56% of Go online submissions for N-th
// Tribonacci Number.
// 2024.04.24 Daily Challenge.

package main

func tribonacci(n int) int {
	if 0 == n {
		return 0
	}
	if 1 == n {
		return 1
	}
	if 2 == n {
		return 1
	}
	var a, b, c int
	var t3, t2, t1 int = 1, 1, 0
	for i := 3; i <= n; i += 1 {
		c, b, a = t3, t2, t1
		t1 = b
		t2 = c
		t3 = a + b + c
	}
	return t3
}
