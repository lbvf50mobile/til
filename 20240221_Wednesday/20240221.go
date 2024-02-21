// Leetcode: 201. Bitwise AND of Numbers Range.
// https://leetcode.com/problems/bitwise-and-of-numbers-range/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 15 ms, faster than 41.35% of Go online submissions for Bitwise AND
// of Numbers Range.
// Memory Usage: 4.8 MB, less than 96.24% of Go online submissions for Bitwise
// AND of Numbers Range.
// 2024.02.21 Daily Challenge.

package main

func rangeBitwiseAnd(left int, right int) int {
	// Based on:
	// https://leetcode.com/problems/bitwise-and-of-numbers-range/discuss/593317/Simple-3-line-Java-solution-faster-than-100
	m, n := left, right
	for n > m {
		n = n & (n - 1)
	}
	return m & n

}
