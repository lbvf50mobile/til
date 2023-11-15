// Leetcode: 1846. Maximum Element After Decreasing and Rearranging.
// https://leetcode.com/problems/maximum-element-after-decreasing-and-rearranging/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 45 ms, faster than 100.00% of Go online submissions for Maximum
// Element After Decreasing and Rearranging.
// Memory Usage: 7.6 MB, less than 100.00% of Go online submissions for
// Maximum Element After Decreasing and Rearranging.
// 2023.11.15 Daily Challenge.
package main

import (
	"sort"
)

func maximumElementAfterDecrementingAndRearranging(arr []int) int {
	// Based on:
	// https://leetcode.com/problems/maximum-element-after-decreasing-and-rearranging/solution/
	sort.Ints(arr)
	ans := 1
	n := len(arr)
	for i := 1; i < n; i += 1 {
		if arr[i] >= ans+1 {
			ans += 1
		}
	}
	return ans
}
