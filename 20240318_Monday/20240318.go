// Leetcode: 452. Minimum Number of Arrows to Burst Balloons.
// https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 223 ms, faster than 36.90% of Go online submissions for Minimum
// Number of Arrows to Burst Balloons.
// Memory Usage: 18.1 MB, less than 21.69% of Go online submissions for
// Minimum Number of Arrows to Burst Balloons.
// 2024.03.18 Daily Challenge.

package main

import "sort"

func findMinArrowShots(points [][]int) int {
	n := len(points)
	if 0 == n {
		return 0
	}
	ans := 0
	// Sort by start.
	sort.Slice(points, func(i, j int) bool {
		return points[i][0] < points[j][0]
	})
	prev := []int{points[0][0], points[0][1]}
	for i := 1; i < n; i += 1 {
		curr := []int{points[i][0], points[i][1]}
		if inter(prev, curr) {
			s := max(curr[0], prev[0])
			e := min(curr[1], prev[1])
			prev = []int{s, e}

		} else {
			ans += 1
			prev = curr
		}
	}
	ans += 1
	return ans
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func inter(a, b []int) bool {
	// Ends after start.
	// Starts before end.
	if a[0] <= b[1] && a[1] >= b[0] {
		return true
	}
	return false
}
