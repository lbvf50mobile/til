// Leetcode: 238. Product of Array Except Self.
// https://leetcode.com/problems/product-of-array-except-self/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 21 ms, faster than 74.71% of Go online submissions for Product of
// Array Except Self.
// Memory Usage: 8.4 MB, less than 8.28% of Go online submissions for Product
// of Array Except Self.
// 2024.03.15 Daily Challenge.

package main

func productExceptSelf(nums []int) []int {
	suffix := make([]int, len(nums))
	prefix := make([]int, len(nums))
	ans := make([]int, len(nums))
	suf, pref := 1, 1
	n := len(nums)
	for i := 0; i < n; i += 1 {
		suf *= nums[i]
		suffix[i] = suf
	}
	for i := n - 1; i >= 0; i -= 1 {
		pref *= nums[i]
		prefix[i] = pref
	}
	ans[0] = prefix[1]
	ans[n-1] = suffix[n-2]
	for i := 1; i < (n - 1); i += 1 {
		ans[i] = suffix[i-1] * prefix[i+1]
	}
	return ans
}
