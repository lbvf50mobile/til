// Leetcode: 136. Single Number.
// https://leetcode.com/problems/single-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms, faster than 89.25% of Go online submissions for Single
// Number.
// Memory Usage: 6.5 MB, less than 38.57% of Go online submissions for Single
// Number
// 2024.01.15.
// https://gist.github.com/lbvf50mobile/7c2eba643cf605660d2adb14f9d8be32

package main

func singleNumber(nums []int) int {
	// XOR.
	var ans int
	for _, v := range nums {
		ans = ans ^ v
	}
	return ans
}
