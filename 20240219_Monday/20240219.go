// Leetcode: 231. Power of Two.
// https://leetcode.com/problems/power-of-two/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Power of
// Two.
// Memory Usage: 2.2 MB, less than 13.51% of Go online submissions for Power
// of Two.
// 2024.02.19 Daily Challenge.

package main

func isPowerOfTwo(n int) bool {
	cnt := 0
	for n > 0 {
		if 1 == n%2 {
			cnt += 1
		}
		n = n >> 1
	}
	return 1 == cnt
}
