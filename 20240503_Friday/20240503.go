// Leetcode: 165. Compare Version Numbers.
// https://leetcode.com/problems/compare-version-numbers/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 78.95% of Go online submissions for Compare
// Version Numbers.
// Memory Usage: 2.2 MB, less than 21.05% of Go online submissions for Compare
// Version Numbers.
// 2024.05.03 Daily Challenge.

package main

import (
	"strconv"
	"strings"
)

// 1. Split strings by dots.
// 2. Covert element of slice into integers.
// 3. Extend the short one. Make slice's lengths equal.
// 4. Start comparing form left to right. Return if no equal.
// 5. If there is no returns from the loop. Return 0 at the end of a func.

func compareVersion(version1 string, version2 string) int {
	v1 := strToSlice(version1)
	v2 := strToSlice(version2)
	if len(v1) < len(v2) {
		diff := len(v2) - len(v1)
		zeros := make([]int, diff)
		v1 = append(v1, zeros...)
	}
	if len(v2) < len(v1) {
		diff := len(v1) - len(v2)
		zeros := make([]int, diff)
		v2 = append(v2, zeros...)
	}
	for i, _ := range v1 {
		if v1[i] < v2[i] {
			return -1
		}
		if v1[i] > v2[i] {
			return 1
		}
	}
	return 0
}

func strToSlice(str string) []int {
	sStr := strings.Split(str, ".")
	ans := make([]int, len(sStr))
	for i, v := range sStr {
		v = strings.TrimLeft(v, "0")
		if 0 == len(v) {
			v = "0"
		}
		ans[i], _ = strconv.Atoi(v)
	}
	return ans
}
