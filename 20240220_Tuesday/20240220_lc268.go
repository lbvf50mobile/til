// Leetcode: 268. Missing Number.
// https://leetcode.com/problems/missing-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms, faster than 88.15% of Go online submissions for Missing
// Number.
// Memory Usage: 6.6 MB, less than 24.53% of Go online submissions for Missing
// Number.
// 2024.02.20 Daily Challenge.

package main

func missingNumber(nums []int) int {
	l := len(nums)
	sum := (l * (l + 1)) / 2
	for _, v := range nums {
		sum -= v
	}
	return sum
}
