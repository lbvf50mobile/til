// Leetcode: 2540. Minimum Common Value.
// https://leetcode.com/problems/minimum-common-value/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 65 ms, faster than 75.61% of Go online submissions for Minimum
// Common Value.
// Memory Usage: 10.3 MB, less than 39.02% of Go online submissions for
// Minimum Common Value.
// 2024.03.09 Daily Challenge.

package main

func getCommon(nums1 []int, nums2 []int) int {
	i, j := 0, 0
	n, m := len(nums1), len(nums2)
	for i < n && j < m {
		if nums1[i] == nums2[j] {
			return nums1[i]
		}
		if nums1[i] < nums2[j] {
			i += 1
		} else {
			j += 1
		}
	}
	return -1 // <= Here.
}
