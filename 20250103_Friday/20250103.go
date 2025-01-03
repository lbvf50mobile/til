// Leetcode: 2270. Number of Ways to Split Array
// https://leetcode.com/problems/number-of-ways-to-split-array/description/?envType=daily-question&envId=2025-01-03
// = = = = = = = = = = = = = =
// Accpeted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms Beats 65.00%
// Memory: 11.59 MB Beats 22.50%
// 2025.01.03 Daily Challenge.
// https://gist.github.com/lbvf50mobile/705cf6c829dc7a8ff75bf3b887042f16

package main

import (
// "fmt"
)

func waysToSplitArray(nums []int) int {
	ps := make([]int, len(nums)) // Prefix sum.
	ans := 0

	// Fill preifx sum.
	ps[0] = nums[0]
	for i := 1; i < len(nums); i += 1 {
		ps[i] = ps[i-1] + nums[i]
	}

	// Count valid splits
	for i := 0; i < len(nums)-1; i += 1 {
		left, right := getSums(i, ps)
		if left >= right {
			ans += 1
		}
	}

	return ans
}

func getSums(i int, ps []int) (int, int) {
	n := len(ps)
	total := ps[n-1]
	left, right := ps[i], total-ps[i]
	return left, right
}
