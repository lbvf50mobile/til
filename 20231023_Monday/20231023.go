// Leetcode: 342. Power of Four.
// https://leetcode.com/problems/power-of-four
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 17.48% of Go online submissions for Power of Four.
// Memory Usage: 2.1 MB, less than 77.62% of Go online submissions for Power of
// Four.
// 2023.10.23 Daily Challenge.
package main

func isPowerOfFour(n int) bool {
	if 1 == n {
		return true
	}
	if 0 >= n {
		return false
	}
	for 0 == n%4 {
		n /= 4
	}
	return 1 == n
}
