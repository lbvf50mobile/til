// Leetcode: 1922. Eliminate Maximum Number of Monsters.
// https://leetcode.com/problems/eliminate-maximum-number-of-monsters/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 196 ms, faster than 13.33% of Go online submissions for Eliminate
// Maximum Number of Monsters.
// Memory Usage: 8.6 MB, less than 93.33% of Go online submissions for Eliminate
// Maximum Number of Monsters.
// 2023.11.07 Daily Challenge.
package main

import (
	"sort"
)

func eliminateMaximum(dist []int, speed []int) int {
	// Based on:
	// https://leetcode.com/problems/eliminate-maximum-number-of-monsters/
	arrival := make([]float64, len(dist))
	ans := 0
	for i, v := range dist {
		arrival[i] = float64(v) / float64(speed[i])
	}
	sort.Float64s(arrival)
	for i, v := range arrival {
		if v <= float64(i) {
			break
		}
		ans += 1
	}
	return ans
}
