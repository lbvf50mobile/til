// Leetcode: 1611. Minimum One Bit Operations to Make Integers Zero.
// https://leetcode.com/problems/minimum-one-bit-operations-to-make-integers-zero/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Chirst!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Minimum One
// Bit Operations to Make Integers Zero.
// Memory Usage: 2.1 MB, less than 60.00% of Go online submissions for Minimum
// One Bit Operations to Make Integers Zero.
// 2023.11.30 Daily Challenge.
package main

func minimumOneBitOperations(n int) int {
	// Based on the secon approach of the Leetcode's solution.
	ans := 0
	k := 0
	mask := 1
	for mask <= n {
		if 0 != (n & mask) {
			tmp := 2 << k
			ans = tmp - 1 - ans
		}
		mask = mask << 1
		k += 1
	}
	return ans
}
