// Leetcode: 2149. Rearrange Array Elements by Sign.
// https://leetcode.com/problems/rearrange-array-elements-by-sign/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 256 ms, faster than 21.79% of Go online submissions for Rearrange
// Array Elements by Sign.
// Memory Usage: 12.1 MB, less than 94.87% of Go online submissions for
// Rearrange Array Elements by Sign
// 2024.02.14 Daily Challenge.

package main

func rearrangeArray(nums []int) []int {
	// Jump by two.
	// Two pointers, one for positive, one for negative.
	// When meet.
	ans := make([]int, len(nums))
	i, j := 0, 1 // i - for positive, j - for negative.
	for _, v := range nums {
		if v > 0 {
			ans[i] = v
			i += 2
		} else {
			ans[j] = v
			j += 2
		}
	}
	return ans
}
