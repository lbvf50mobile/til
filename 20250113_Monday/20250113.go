// Leetcode: 3223. Minimum Lenght of String Arter Operations
// https://leetcode.com/problems/minimum-length-of-string-after-operations/description/?envType=daily-question&envId=2025-01-13
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms Beats 77.78%
// Memory: 8.70 MB Beats 88.89%
// 2025.01.13 Daily Challenge.
// https://gist.github.com/lbvf50mobile/6b2f002f25e5edf6816de269c3fcf810


package main

import (
// "fmt"
)

func minimumLength(s string) int {
	// Substitute each group size of 3 of a paritcular symbol by 1 symbol
	// untill it possible.

	var f [26]int
	ans := len(s)
	// Create Freq Array.
	for _, v := range s {
		i := int(v) - int('a')
		f[i] += 1
	}
	for _, v := range f {
		tmp := v
		for tmp >= 3 {
			tmp = tmp - (tmp/3)*3 + (tmp / 3)
		}
		ans = ans - v + tmp
	}
	return ans
}
