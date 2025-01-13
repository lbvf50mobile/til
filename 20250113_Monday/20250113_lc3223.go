// Leetcode: 3223. Minimum Lenght of String Arter Operations
// https://leetcode.com/problems/minimum-length-of-string-after-operations/description/?envType=daily-question&envId=2025-01-13
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 8 ms Beats 77.78%
// Memory: 9.00 MB Beats 44.44%
// 2025.01.13 Daily Challenge.
// https://gist.github.com/lbvf50mobile/6b2f002f25e5edf6816de269c3fcf810

package main

import (
// "fmt"
)

func minimumLength(s string) int {
	// Odd => 1 <= because of center.
	// Even => odd + 1

	var f [26]int
	ans := 0

	for _, v := range s {
		f[v-'a'] += 1
	}

	for _, v := range f {
		if 0 == v {
			continue
		}
		if 1 == v%2 {
			ans += 1
		} else {
			ans += 2
		}
	}

	return ans
}
