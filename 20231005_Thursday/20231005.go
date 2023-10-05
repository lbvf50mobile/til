// Leetcode: 229. Majority Element II.
// https://leetcode.com/problems/majority-element-ii/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 8 ms, faster than 92.20% of Go online submissions for Majority
// Element II.
// Memory Usage: 5 MB, less than 43.97% of Go online submissions for Majority
// Element II.
// 2023.10.05 Daily Challenge.
package main

func majorityElement(nums []int) []int {
	h := make(map[int]int)
	bound := len(nums) / 3
	for _, k := range nums {
		h[k] += 1
	}
	ans := make([]int, 0, 2)
	for k, v := range h {
		if v > bound {
			ans = append(ans, k)
		}
	}
	return ans
}
