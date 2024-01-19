// Leetcode: 136. Single Number.
// https://leetcode.com/problems/single-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 16 ms, faster than 53.87% of Go online submissions for Single
// Number.
// Memory Usage: 6.5 MB, less than 30.30% of Go online submissions for Single
// Number.
// 2024.01.20.
// https://gist.github.com/lbvf50mobile/942084abcbcda212c493ea3c5f1e8161

package main

func singleNumber(nums []int) int {
	ans := 0
	for _, v := range nums {
		ans = ans ^ v
	}
	return ans

}
