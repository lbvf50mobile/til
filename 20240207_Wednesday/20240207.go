// Leetcode: 451. Sort Characters By Frequency.
// https://leetcode.com/problems/sort-characters-by-frequency/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 6 ms, faster than 77.19% of Go online submissions for Sort
// Characters By Frequency.
// Memory Usage: 7.1 MB, less than 39.77% of Go online submissions for Sort
// Characters By Frequency.
// 2024.02.07 Daily Challenge.

package main

import (
	"sort"
	"strings"
)

type runeAmount struct {
	v rune
	n int
}

func frequencySort(s string) string {
	// 1. Create counter.
	cr := make(map[rune]int)
	for _, v := range s {
		cr[v] += 1
	}
	// 2. Convert counter to slice.
	sl := make([]*runeAmount, 0)
	for k, v := range cr {
		sl = append(sl, &runeAmount{k, v})
	}
	// 3. Sort that slice.
	sort.SliceStable(sl, func(i, j int) bool {
		return sl[i].n > sl[j].n
	})

	// 4. Convert sortes slice into a string.
	ans := ""
	for _, v := range sl {
		ans += strings.Repeat(string(v.v), v.n)
	}
	// 5. Return that string.
	return ans
}
