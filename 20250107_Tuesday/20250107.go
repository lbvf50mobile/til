// Leetcode: 1408. String Matching in an Array
// https://leetcode.com/problems/string-matching-in-an-array/description/?envType=daily-question&envId=2025-01-07
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 4.25 MB Beats 63.64%
// 2025.01.07 Daily Challenge.
// https://gist.github.com/lbvf50mobile/802554ada79b80441f97733ad2d3ccc5

package main

import (
	//"fmt"
	"sort"
	"strings"
)

func stringMatching(words []string) []string {
	s, n := words, len(words)
	ans := []string{}
	sort.Slice(s, func(i, j int) bool {
		return len(s[i]) < len(s[j])
	})
	for i, v := range s {
		for j := i + 1; j < n; j += 1 {
			if -1 != strings.Index(s[j], v) {
				ans = append(ans, v)
				break
			}
		}
	}
	return ans
}
