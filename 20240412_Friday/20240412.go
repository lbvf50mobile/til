// Leetcode: 42. Trapping Rain Water.
// https://leetcode.com/problems/trapping-rain-water/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 7 ms, faster than 85.99% of Go online submissions for Trapping
// Rain Water.
// Memory Usage: 5.4 MB, less than 91.58% of Go online submissions for
// Trapping Rain Water.
// 2024.04.12 Daily Challenge.

package main

func trap(height []int) int {
	// Based on:
	// https://leetcode.com/problems/trapping-rain-water/discuss/17364/7-lines-C-C%2B%2B
	n := len(height)
	h := height
	l, r, level, ans := 0, n-1, 0, 0
	for l < r {
		i := 0
		if h[l] < h[r] {
			i = l
			l += 1
		} else {
			i = r
			r -= 1
		}
		lower := h[i]
		level = max(level, lower)
		ans += (level - lower)
	}
	return ans

}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
