// Leetcode: 2425. Bitwise XOR of All Pairings
// https://leetcode.com/problems/bitwise-xor-of-all-pairings/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Memory: 38 ms Beats 4.17%
// Runtime: 14.28 MB Beats 16.67%
// 2025.01.16 Daily Challenge.
// https://gist.github.com/lbvf50mobile/d387d80a34405969f1a1360f1e34480f
package main

import (
// "fmt"
)

func xorAllNums(nums1 []int, nums2 []int) int {
	// Based on the Leetcode's solution.
	f := make(map[int]int)
	l1, l2 := len(nums1), len(nums2)
	ans := 0

	for _, v := range nums1 {
		f[v] += l2
	}
	for _, v := range nums2 {
		f[v] += l1
	}

	for k, v := range f {
		if 1 == v%2 {
			ans ^= k
		}
	}
	return ans

}
