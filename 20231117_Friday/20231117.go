// Leetcode: 1877. Minimize Maximum Pair Sum in Array.
// https://leetcode.com/problems/minimize-maximum-pair-sum-in-array
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 240 ms, faster than 56.76% of Go online submissions for Minimize
// Maximum Pair Sum in Array.
// Memory Usage: 8.7 MB, less than 43.24% of Go online submissions for
// Minimize Maximum Pair Sum in Array.
// 2023.11.17 Daily Challenge.
package main

import (
	"sort"
)

func minPairSum(nums []int) int {
	sort.Ints(nums)
	i, j := 0, len(nums)-1
	max := nums[i] + nums[j]
	var tmp int
	i += 1
	j -= 1
	for i < j {
		tmp = nums[i] + nums[j]
		if tmp > max {
			max = tmp
		}
		i, j = i+1, j-1
	}
	return max
}
