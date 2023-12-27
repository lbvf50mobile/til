// Leetcode: 1578. Minimum Time to Make Rope Colorful.
// https://leetcode.com/problems/minimum-time-to-make-rope-colorful/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 110 ms, faster than 86.36% of Go online submissions for Minimum
// Time to Make Rope Colorful.
// Memory Usage: 8.1 MB, less than 72.73% of Go online submissions for Minimum
// Time to Make Rope Colorful.
// 2023.12.27 Daily Challenge.

package main

func minCost(colors string, neededTime []int) int {
	// Remove (sum - max), do not touch the maximum in a row.
	max, sum := 0, 0
	ans := 0
	for i, v := range neededTime {
		// Calculate and Reset time.
		if 0 == i || colors[i-1] != colors[i] {
			// Remove only when max != sum, i.e. more than one baloon.
			if max != sum {
				ans += (sum - max)
			}
			// After add data to the ans, it is time to reset.
			max, sum = v, v
		} else {
			// Working in a row of similar values.
			sum += v
			if max < v {
				max = v
			}
		}
	}
	// Last calculation for the suffix group.
	if max != sum {
		ans += (sum - max)
	}
	return ans
}
