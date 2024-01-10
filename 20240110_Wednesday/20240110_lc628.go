// Leetcode: 628. Maximum Product of Three Numbers.
// https://leetcode.com/problems/maximum-product-of-three-numbers/
// https://leetcode.com/discuss/interview-question/4519498/some-simple-but-impt-interview-topics-for-2024
// = = = = = = = = = = = = = =
// Accpeted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 52 ms, faster than 6.10% of Go online submissions for Maximum
// Product of Three Numbers.
// Memory Usage: 7 MB, less than 8.54% of Go online submissions for Maximum
// Product of Three Numbers.
// 2024.01.10.

package main

import "sort"

func maximumProduct(nums []int) int {
	sort.Ints(nums)
	n := len(nums)
	// In case of positive.
	ans := nums[n-1] * nums[n-2] * nums[n-3]
	// In case of negative values.
	tmp := nums[0] * nums[1] * nums[n-1]
	if tmp > ans {
		ans = tmp

	}
	return ans
}
