// Leetcode: 238. Product of Array Except Self.
// https://leetcode.com/problems/product-of-array-except-self/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 21 ms, faster than 74.71% of Go online submissions for Product of
// Array Except Self.
// Memory Usage: 7.5 MB, less than 48.90% of Go online submissions for Product
// of Array Except Self.
// 2024.03.15 Daily Challenge.

package main

func productExceptSelf(nums []int) []int {
	prefix := make([]int, len(nums))
	suf, pref := 1, 1
	n := len(nums)
	for i := n - 1; i >= 0; i -= 1 {
		pref *= nums[i]
		prefix[i] = pref
	}
	for i := 0; i < (n - 1); i += 1 {
		prefix[i] = suf * prefix[i+1]
		suf *= nums[i]
	}
	prefix[n-1] = suf
	return prefix
}
