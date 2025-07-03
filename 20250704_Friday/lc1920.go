// Leetcode: 1920. Build Array from Permutation.
// https://leetcode.com/problems/build-array-from-permutation/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func buildArray(nums []int) []int {
	ans := make([]int, len(nums))
	for i, v := range nums {
		ans[i] = nums[v]
	}
	return ans
}
