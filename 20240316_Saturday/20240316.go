// Leetcode: 525. Contiguous Array.
// https://leetcode.com/problems/contiguous-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 78 ms, faster than 87.85% of Go online submissions for Contiguous
// Array.
// Memory Usage: 8 MB, less than 78.50% of Go online submissions for
// Contiguous Array.
// 2024.03.16 Daily Challenge.

package main

func findMaxLength(nums []int) int {
	// Based on:
	// https://leetcode.com/problems/contiguous-array/solution/
	h := make(map[int]int)
	h[0] = -1
	ans, cnt := 0, 0
	for i, v := range nums {
		if 1 == v {
			cnt += 1
		} else {
			cnt -= 1
		}
		if pos, ok := h[cnt]; ok {
			ans = max(ans, i-pos)
		} else {
			h[cnt] = i
		}
	}
	return ans
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
