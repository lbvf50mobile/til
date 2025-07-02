// Leetcode: 594. Longest Harmonious Subsequence
// https://leetcode.com/problems/longest-harmonious-subsequence/description/?envType=daily-question&envId=2025-06-30
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"sort"
)

func findLHS(nums []int) int {
	// I found this solution at the top Leetcode's Golang solutions. The
	// fastes one for lc594.
	sort.Ints(nums)
	ans := 0
	for l, r := 0, 0; r < len(nums); r += 1 {
		// Jump to first 1 difference or just the same.
		for ; nums[r]-nums[l] > 1; l += 1 {
		}

		// now just calculate
		// And this is imporant: Only if the difference is 1. Fixed.
		if 1 == nums[r]-nums[l] {
			// Hey! This is indices, not values. Fixed.
			ans = max(ans, r-l+1) // calculate length.
		}
	}
	return ans
}
