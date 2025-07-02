// Leetcode: 2016. Maximum Difference Between Increasing Elements
// https://leetcode.com/problems/maximum-difference-between-increasing-elements/description/?envType=daily-question&envId=2025-06-16
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func maximumDifference(nums []int) int {
	ans := -1
	premin := nums[0]
	for j := 1; j < len(nums); j += 1 {
		tmp := nums[j] - premin
		// tmp > 0 becaue nums[i] < nums[j]
		// Here was an error and it is fixed.
		if tmp > 0 && ans < tmp {
			ans = tmp
		}
		if premin > nums[j] {
			premin = nums[j]
		}
	}
	return ans
}
