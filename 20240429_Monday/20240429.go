// Leetcode: 2997. Minimum Number of Operations to Make Array XOR Equal to K.
// https://leetcode.com/problems/minimum-number-of-operations-to-make-array-xor-equal-to-k/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 87 ms, faster than 69.23% of Go online submissions for Minimum
// Number of Operations to Make Array XOR Equal to K.
// Memory Usage: 8 MB, less than 76.92% of Go online submissions for Minimum
// Number of Operations to Make Array XOR Equal to K.
// 2024.04.29 Daily Challenge.

package main

func minOperations(nums []int, k int) int {
	// Based on the Leetcode's solution.
	finalXor := 0
	for _, n := range nums {
		finalXor ^= n
	}
	ans := 0
	tmp := finalXor ^ k
	for 0 != tmp {
		if 1 == tmp%2 {
			ans += 1
		}
		tmp >>= 1
	}
	return ans
}
