// Leetcode: 594. Longest Harmonious Subsequence
// https://leetcode.com/problems/longest-harmonious-subsequence/description/?envType=daily-question&envId=2025-06-30
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"sort"
)

func findLHS(nums []int) int {
	// Ok. It could be a one dijig or a pair as maximum.
	// The flow.
	// Create a Couner. Value:Amount.
	// Counter to a Slice.
	// Sort slice by a Value increasinly.
	// Fly over the slice, and find maximum.

	// Create a counter.
	m := make(map[int]int)
	for _, v := range nums {
		m[v] += 1
	}

	// Convert map => slice of pairs

	s := make([][2]int, 0, len(m))
	for k, v := range m {
		s = append(s, [2]int{k, v})
	}

	// Sort by key
	sort.Slice(s, func(i, j int) bool { return s[i][0] < s[j][0] })

	// Fly over the sortes slice find an answer.
	max := 0
	for i := 1; i < len(s); i += 1 {
		// Select ONLY a pair. Fixed error.
		if s[i-1][0]+1 == s[i][0] {
			tmp := s[i-1][1] + s[i][1]
			if max < tmp {
				max = tmp
			}
		}
	}
	return max
}
