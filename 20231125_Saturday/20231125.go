// Leetcode: 1685. Sum of Absolute Differences in a Sorted Array.
// https://leetcode.com/problems/sum-of-absolute-differences-in-a-sorted-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 92 ms, faster than 95.99% of Go online submissions for Sum of
// Absolute Differences in a Sorted Array.
// Memory Usage: 8 MB, less than 91.45% of Go online submissions for Sum of
// Absolute Differences in a Sorted Array.
// 2023.11.27 Updated.

package main

func getSumAbsoluteDifferences(nums []int) []int {
	// Based on the first Leetcode's solution.
	n := len(nums)
	prf := make([]int, n)
	prf[0] = nums[0]
	for i := 1; i < n; i += 1 {
		prf[i] = prf[i-1] + nums[i]
	}
	ans := make([]int, n)
	for i := 0; i < n; i += 1 {
		// Sum.
		ls := prf[i] - nums[i]
		rs := prf[n-1] - prf[i]
		// Count.
		lc := i
		rc := n - 1 - i
		// Total.
		lt := lc*nums[i] - ls
		rt := rs - rc*nums[i]
		ans[i] = lt + rt
	}
	return ans
}
