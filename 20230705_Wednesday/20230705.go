// Leetcode: 1493. Longest Subarray of 1's After Deleting One Element.
// https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 46 ms, faster than 30.30% of Go online submissions for Longest
// Subarray of 1's After Deleting One Element.
//Memory Usage: 7.1 MB, less than 90.53% of Go online submissions for Longest
//Subarray of 1's After Deleting One Element.
// 2023.07.05 Daily Challenge.

package main

import (
	"fmt"
)

func longestSubarray(nums []int) int {
	// Adding concept of step. Step is 1 when previos is zero or begining of the
	// aray.
	stepIndices := make([]int, 0)
	ans := 0
	zeros := 0
	for i, v := range nums {
		// Nothing to do with zeros.
		if 0 == v {
			zeros += 1
			if 2 == zeros {
				stepIndices = stepIndices[:0]
			}
			continue
		}
		zeros = 0
		// May be it is a step.
		if 1 == v && (0 == i || 0 == nums[i-1]) {
			stepIndices = append(stepIndices, i)
			// Need only two step indices. Not more then two.
			if 2 < len(stepIndices) {
				stepIndices = stepIndices[1:]
			}
		}
		// Time to calculate current length.
		// Do not add one because always need.
		l := i - stepIndices[0]

		// Take zero left.
		if 1 == len(stepIndices) && 0 != stepIndices[0] {
			l += 1 // take one zero.
		}
		// Take zero right.
		if 1 == len(stepIndices) && 0 == stepIndices[0] && i < len(nums) - 1 && 0 == nums[i+1] {
			l += 1
		}

		// And save ans if l > ans.
		if l > ans {
			ans = l
		}
	}
	return ans
}
