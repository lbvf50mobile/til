// Leetcode: 628. Maximum Product of Three Numbers.
// https://leetcode.com/problems/maximum-product-of-three-numbers/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 21 ms, faster than 100.00% of Go online submissions for Maximum
// Product of Three Numbers.
// Memory Usage: 6.6 MB, less than 69.70% of Go online submissions for Maximum
// Product of Three Numbers.
// 2024.01.20.
// https://gist.github.com/lbvf50mobile/8c910d5aed7ead6ae691977242af8d21

package main

func maximumProduct(nums []int) int {
	// Mapximum possible value in the input is 1000.
	sMin := -10_000_000
	sMax := 10_000_000
	max1, max2, max3 := sMin, sMin, sMin
	min1, min2 := sMax, sMax
	for _, v := range nums {
		if v > max1 {
			max3 = max2
			max2 = max1
			max1 = v
		} else if v > max2 {
			max3 = max2
			max2 = v
		} else if v > max3 {
			max3 = v
		}
		if v < min1 {
			min2 = min1
			min1 = v
		} else if v < min2 {
			min2 = v
		}
	}
	ans := max1 * max2 * max3
	ans1 := min2 * min1 * max1
	if ans1 > ans {
		ans = ans1
	}
	return ans
}
