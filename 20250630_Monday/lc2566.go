// Leetcode: 2566. Maximum Difference by Remapping a Digit
// https://leetcode.com/problems/maximum-difference-by-remapping-a-digit/description/?envType=daily-question&envId=2025-06-14
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"strconv"
	"strings"
)

func minMaxDifference(num int) int {
	// 1. Convert to string.
	str := strconv.Itoa(num)
	// 2. Find first non 9 to substiute on 9.
	subst := '_'
	for i := 0; i < len(str); i += 1 {
		if '9' != str[i] {
			subst = rune(str[i])
			break
		}
	}
	maxS := str
	if '_' != subst {
		maxS = strings.ReplaceAll(str, string(subst), "9")
	}
	// 3. Just replace first digit with zero.
	subst = rune(str[0])
	minS := strings.ReplaceAll(str, string(subst), "0")
	// 4. Convert string to int.
	maxInt, _ := strconv.Atoi(maxS)
	minInt, _ := strconv.Atoi(minS)
	return maxInt - minInt
}
