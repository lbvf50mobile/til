// Leetcode: 191. Number of 1 Bits.
// https://leetcode.com/problems/number-of-1-bits
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Number of 1
// Bits.
// Memory Usage: 2 MB, less than 53.07% of Go online submissions for Number of
// 1 Bits.
// 2023.11.29 Daily Challenge.
package main

func hammingWeight(num uint32) int {
	ans := 0
	for num > 0 {
		if 1 == num%2 {
			ans += 1
		}
		num = num >> 1
	}
	return ans
}
