// Leetcode: 1464. Maximum Product of Two Elements in an Array.
// https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Maximum
// Product of Two Elements in an Array.
// Memory Usage: 2.6 MB, less than 57.00% of Go online submissions for Maximum
// Product of Two Elements in an Array.
// 2023.12.12 Daily Challenge.

package main

func maxProduct(nums []int) int {
	// Find "max" and "second max".
	max := -1
	max2 := -1
	for _, v := range nums {
		if v > max {
			max2 = max
			max = v
		} else if v > max2 {
			max2 = v
		}
	}
	return (max - 1) * (max2 - 1)

}
