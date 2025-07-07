// Leetcode: 2006. Count Number of Pairs With Absolute Difference K
// https://leetcode.com/problems/count-number-of-pairs-with-absolute-difference-k/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func countKDifference(nums []int, k int) int {
	h := make(map[int]int)
	ans := 0
	for _, jval := range nums {
		// |nums[i] - nums[j]| == k
		// i - j = k;  i = k + j = j + k
		// i - j = -k; i = -k + j = j - k
		ival1 := jval + k
		ival2 := jval - k
		if amount, ok := h[ival1]; ok {
			ans += amount
		}
		if amount, ok := h[ival2]; ok {
			ans += amount
		}
		h[jval] += 1
	}
	return ans
}
