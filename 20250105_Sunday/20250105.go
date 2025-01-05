// Leetcode: 2381. Shifting Letters II
// https://leetcode.com/problems/shifting-letters-ii/?envType=daily-question&envId=2025-01-05
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms Beats 80.00%
// Memory: 12.76 MB Beats 100.00%
// 2025.01.05 Daily Challenge.
// https://gist.github.com/lbvf50mobile/0f47e8daf4ac0eb8ea29f6eca4b300e2

package main

import (
// "fmt"
)

func shiftingLetters(s string, shifts [][]int) string {
	ws := workingSlice(s)
	da := make([]int, len(s))
	for _, v := range shifts {
		setDa(da, v)
	}
	prev := 0
	// Set number shifts.
	for i := 0; i < len(s); i += 1 {
		da[i] += prev
		prev = da[i]
		ws[i] = getChar(ws[i], da[i])
	}
	return string(ws)
}

func workingSlice(s string) []byte {
	ans := make([]byte, len(s))
	for i := 0; i < len(s); i += 1 {
		ans[i] = s[i] - 'a'
	}
	return ans
}

func getChar(code byte, da int) byte {
	da = (da % 26) + 26 // avoid negative.
	return byte(int('a') + (int(code)+da)%26)
}

func setDa(da []int, v []int) {
	step := 1
	// Reverse if needs to.
	if 0 == v[2] {
		step = -1
	}
	da[v[0]] += step
	// Must be penultimage.
	if v[1] <= len(da)-2 {
		// decrease next.
		da[v[1]+1] -= step
	}
}
