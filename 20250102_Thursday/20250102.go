// Leetcode: 2559. Count Vowel Strings in Ranges
// https://leetcode.com/problems/count-vowel-strings-in-ranges/editorial/?envType=daily-question&envId=2025-01-02
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 22.75 MB Beats 25.00%
// 2025.01.02 Daily Challenge.
// https://gist.github.com/lbvf50mobile/e471d5cdca1536eb17817ad01ce19826

package main

import (
// "fmt"
)

func vowelStrings(words []string, queries [][]int) []int {
	// Based on Leetcode's solution.
	// It is a translation from the Python soltuion.
	ans := make([]int, len(queries))
	ps := make([]int, len(words))        // Prefix sum.
	v := []byte{'a', 'e', 'i', 'o', 'u'} // Vowels.
	sum := 0
	for i, cw := range words {
		f, l := cw[0], cw[len(cw)-1] // first, last
		a := in(v, f)
		b := in(v, l)
		if a && b {
			sum += 1
		}
		ps[i] = sum // Prefix sum.
	}
	// cq - current query
	for i, cq := range queries {
		x := 0
		if 0 == cq[0] {
			x = 0
		} else {
			x = ps[cq[0]-1]
		}
		ans[i] = ps[cq[1]] - x
	}
	return ans
}

func in(haystack []byte, needle byte) bool {
	for _, v := range haystack {
		if v == needle {
			return true
		}
	}
	return false
}
