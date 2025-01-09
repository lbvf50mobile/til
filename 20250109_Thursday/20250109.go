// Leetcode: 2185. Counting Words With a Given Prefix
// https://leetcode.com/problems/counting-words-with-a-given-prefix/submissions/1502707677/?envType=daily-question&envId=2025-01-09
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 5.45 MB Beats 42.37%
// 2025.01.09 Daily Challenge.
// https://gist.github.com/lbvf50mobile/be60947a386a1759d07e775469e10d35

package main

import (
	// "fmt"
	"strings"
)

func prefixCount(words []string, pref string) int {
	ans := 0
	for _, w := range words {
		if 0 == strings.Index(w, pref) {
			ans += 1
		}
	}
	return ans
}
