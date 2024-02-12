// Leetcode: 169. Majority Element.
// https://leetcode.com/problems/majority-element/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 16 ms, faster than 41.89% of Go online submissions for Majority
// Element.
// Memory Usage: 6.3 MB, less than 31.83% of Go online submissions for
// Majority Element.
// 2024.02.12 Daily Challenge.

package main

import "sort"

func majorityElement(nums []int) int {
	sort.Ints(nums)
	n := len(nums)
	return nums[n/2]
}
