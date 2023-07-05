// Leetcode: 1493. Longest Subarray of 1's After Deleting One Element.
// https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 52 ms, faster than 7.20% of Go online submissions for Longest
// Subarray of 1's After Deleting One Element.
// Memory Usage: 8 MB, less than 9.09% of Go online submissions for Longest
// Subarray of 1's After Deleting One Element.
// 2023.07.05 Daily Challenge.

package main

import (
	"fmt"
)

func longestSubarray(nums []int) int {
	i, j := 0, 0
	n := len(nums)
	zeros := 0
	if 0 == nums[0] {
		zeros = 1
	}
	ans := 0
	for i < n {
		// Calculate.
		// Always take one element from lenght.
		l := j - i
		if zeros < 2 && ans < l {
			ans = l
		}
		// Condition to grow.
		// If there is a place to grow.
		// And less then two zeros.
		if zeros < 2 && j < n-1 {
			j += 1
			if 0 == nums[j] {
				zeros += 1
			}
			continue
		}
		// Condition to shirnk.
		// Two or more zeros.
		// No place to grow for j.
		if zeros >= 2 || n-1 == j {
			if 0 == nums[i] {
				zeros -= 1
			}
			i += 1
			continue
		}
	}
	return ans
}
