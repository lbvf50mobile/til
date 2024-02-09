// Leetcode: 368. Largest Divisible Subset.
// https://leetcode.com/problems/largest-divisible-subset/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 17 ms, faster than 57.69% of Go online submissions for Largest
// Divisible Subset.
// Memory Usage: 6.3 MB, less than 19.23% of Go online submissions for Largest
// Divisible Subset.
// 2024.02.09 Daily Challenge.

package main

import (
	"sort"
)

func largestDivisibleSubset(nums []int) []int {
	// Based on:
	// https://leetcode.com/problems/largest-divisible-subset/discuss/684738/Python-Short-DP-with-O(n2)-explained-(update)
	if 0 == len(nums) {
		return nil
	}
	sort.Ints(nums)
	sol := make([][]int, len(nums))
	for i, v := range nums {
		sol[i] = []int{v}
	}
	for i := 0; i < len(nums); i += 1 {
		for j := 0; j < i; j += 1 {
			x := 0 == (nums[i] % nums[j])
			x2 := len(sol[i]) < (len(sol[j]) + 1)
			if x && x2 {
				sol[i] = append([]int{}, sol[j]...)
				sol[i] = append(sol[i], nums[i])
			}
		}
	}
	var ans []int
	max := -50
	for _, v := range sol {
		if max < len(v) {
			max = len(v)
			ans = v
		}
	}
	return ans
}
