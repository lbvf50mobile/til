// Leetcode: 628. Maximum Product of Three Numbers.
// https://leetcode.com/problems/maximum-product-of-three-numbers/
// https://leetcode.com/discuss/interview-question/4519498/some-simple-but-impt-interview-topics-for-2024
// https://gist.github.com/lbvf50mobile/4537fb2b0ff2bf112ed5206c7040c508
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 24 ms, faster than 96.34% of Go online submissions for Maximum
// Product of Three Numbers.
// Memory Usage: 6.4 MB, less than 80.49% of Go online submissions for Maximum
// Product of Three Numbers.
// 2024.01.10.

package main

func maximumProduct(nums []int) int {
	unMin := -10_000_000 // Unreachable in the tasks scope.
	unMax := 10_000_000
	max1, max2, max3 := unMin, unMin, unMin
	min1, min2 := unMax, unMax
	for _, v := range nums {
		// Find values for maximums.
		if v > max1 {
			max1, max2, max3 = v, max1, max2
		} else if v > max2 {
			max2, max3 = v, max2
		} else if v > max3 {
			max3 = v
		}
		// Find values for minimums.
		if v < min1 {
			min1, min2 = v, min1
		} else if v < min2 {
			min2 = v
		}
	}
	// In case of positive.
	ans := max1 * max2 * max3
	// In case of negative values.
	tmp := min1 * min2 * max1
	if tmp > ans {
		ans = tmp

	}
	return ans
}
