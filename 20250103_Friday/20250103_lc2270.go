// Leetcode: 2270. Number of Ways to Split Array
// https://leetcode.com/problems/number-of-ways-to-split-array/description/?envType=daily-question&envId=2025-01-03
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms Beats 56.76%
// Memory: 11.92 MB Beats 21.62%
// https://gist.github.com/lbvf50mobile/705cf6c829dc7a8ff75bf3b887042f16

package main

import (
// "fmt"
)

func waysToSplitArray(nums []int) int {
	total := 0
	ans := 0
	n := len(nums)

	for _, v := range nums {
		total += v
	}

	right, left := 0, 0

	for i := n - 1; i >= 1; i -= 1 {
		right += nums[i]
		left = total - right
		if left >= right {
			ans += 1
		}
	}
	return ans
}
