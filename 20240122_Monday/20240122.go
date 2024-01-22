// Leetcode: 645. Set Mismatch.
// https://leetcode.com/problems/set-mismatch/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 19 ms, faster than 88.89% of Go online submissions for Set
// Mismatch.
// Memory Usage: 6.9 MB, less than 33.33% of Go online submissions for Set
// Mismatch.
// 2024.01.22 Daily Challenge.

package main

func findErrorNums(nums []int) []int {
	counter := make([]int, len(nums)+1)
	for _, v := range nums {
		counter[v] += 1
	}
	ans := []int{0, 0}
	for i := 1; i < len(counter); i += 1 {
		if 2 == counter[i] {
			ans[0] = i
		}
		if 0 == counter[i] {
			ans[1] = i
		}
	}
	return ans
}
