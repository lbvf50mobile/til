// Leetcode: 2444. Count Subarrays With Fixed Bounds.
// https://leetcode.com/problems/count-subarrays-with-fixed-bounds/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 85 ms, faster than 100.00% of Go online submissions for Count
// Subarrays With Fixed Bounds.
// Memory Usage: 12.8 MB, less than 7.14% of Go online submissions for Count
// Subarrays With Fixed Bounds.
// 2024.03.31 Daily Challenge.

package main

func countSubarrays(nums []int, minK int, maxK int) int64 {
	// Based on the lee215's solution.
	var ans int64 = 0
	jMin, jMax, jBad := -1, -1, -1
	for i, v := range nums {
		if !(minK <= v && v <= maxK) {
			jBad = i
		}
		if v == minK {
			jMin = i
		}
		if v == maxK {
			jMax = i
		}
		ans += int64(max(0, min(jMin, jMax)-jBad))
	}
	return ans
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
