// Leetcode: 1422. Maximum Score After Splitting a String.
// https://leetcode.com/problems/maximum-score-after-splitting-a-string/description/?envType=daily-question&envId=2025-01-01
// = = = = = = = = = = = = = =
// Accpeted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 3.94 MB Beats 51.06%
// 2025.01.01 Daily Challenge.

package main

import (
// "fmt"
)

// O, such an interesting task. So!
// 1. Calculate total zeros/ones.
// 2. Iterate over second time, cupte left/right/max.
// 3. Return.
func maxScore(s string) int {
	// Prepare base variables.
	ans := 0
	cur := 0 // Current score.
	zT := 0  // Total zeros.
	oT := 0  // Total ones.
	// Calculate total zeros and ones.
	for _, v := range s {
		if '0' == byte(v) {
			zT += 1
		} else {
			oT += 1
		}
	}
	// Calculate left and right parts.
	zL := 0                            // Zeros left.
	oL, oR := 0, 0                     // Ones left and right.
	for i := 0; i < len(s)-1; i += 1 { // Important, it must be two sub string.
		v := s[i]
		if '0' == v {
			zL += 1 // One more Zero Left.
		} else {
			oL += 1 // One more One Left.

		}
		// Ones Right = ones Total - ones Left
		oR = oT - oL
		// Zeros Left + Ones Right
		cur = zL + oR
		ans = max(cur, ans)
	}
	return ans
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
