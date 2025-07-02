// Leetcode: 2016. Maximum Difference Between Increasing Elements
// https://leetcode.com/problems/maximum-difference-between-increasing-elements/description/?envType=daily-question&envId=2025-06-16
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func maximumDifference(nums []int) int {
	ans := -1
	// Use nestd loop
	for i := 0; i < len(nums); i += 1 {
		for j := i + 1; j < len(nums); j += 1 {
			a := nums[i]
			b := nums[j]
			tmp := b - a
			if a < b && ans < tmp {
				ans = tmp
			}
		}
	}
	return ans
}
