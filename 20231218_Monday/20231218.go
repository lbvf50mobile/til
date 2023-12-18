// Leetcode: 1913. Maximum Product Difference Between Two Pairs.
// https://leetcode.com/problems/maximum-product-difference-between-two-pairs/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 30 ms, faster than 35.07% of Go online submissions for Maximum
// Product Difference Between Two Pairs.
// Memory Usage: 6.3 MB, less than 72.73% of Go online submissions for Maximum
// Product Difference Between Two Pairs.
// 2023.12.17 Daily Challenge.

package main

import (
	"sort"
)

func maxProductDifference(nums []int) int {
	sort.Ints(nums)
	n := len(nums)
	a, b := nums[n-1], nums[n-2]
	c, d := nums[0], nums[1]
	return (a * b) - (c * d)
}
