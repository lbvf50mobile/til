// Leetcode: 1913. Maximum Product Difference Between Two Pairs.
// https://leetcode.com/problems/maximum-product-difference-between-two-pairs/
// = = = = = = = = = = = = = =
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 20 ms, faster than 77.92% of Go online submissions for Maximum
// Product Difference Between Two Pairs.
// Memory Usage: 6.2 MB, less than 85.71% of Go online submissions for Maximum
// Product Difference Between Two Pairs.
// 2023.12.17 Daily Challenge.

package main

func maxProductDifference(nums []int) int {
	var max1, max2, min1, min2 int
	a, b := nums[0], nums[1]
	if a > b {
		max1, max2 = a, b
		min1, min2 = b, a
	} else {
		max1, max2 = b, a
		min1, min2 = a, b
	}
	for _, v := range nums[2:] {
		if v > max1 {
			max2 = max1
			max1 = v
		} else if v > max2 {
			max2 = v
		}
		if v < min1 {
			min2 = min1
			min1 = v
		} else if v < min2 {
			min2 = v
		}
	}
	return (max1 * max2) - (min1 * min2)
}
