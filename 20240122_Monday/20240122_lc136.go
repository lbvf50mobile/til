// Leetcode: 136. Single Number.
// https://leetcode.com/problems/single-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 15 ms, faster than 70.16% of Go online submissions for Single
// Number.
// Memory Usage: 6.2 MB, less than 74.47% of Go online submissions for Single
// Number.
// 2024.01.22.
// https://gist.github.com/lbvf50mobile/f6ef58cde3e2a5b47b66cdf2509ac033


package main

func singleNumber(nums []int) int {
	// a^a = 0
	// a^a^b = b
	ans := 0
	for _, v := range nums {
		ans = ans ^ v
	}
	return ans
}
