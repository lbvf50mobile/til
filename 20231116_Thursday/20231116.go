// Leetcode: 1980. Find Unique Binary String.
// https://leetcode.com/problems/find-unique-binary-string
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Find Unique
// Binary String.
// Memory Usage: 2.2 MB, less than 40.00% of Go online submissions for Find
// Unique Binary String.
// 2023.11.16 Daily Challenge.
package main

import (
	"strconv"
	"strings"
)

func findDifferentBinaryString(nums []string) string {
	ints := make(map[int]bool)
	n := len(nums)
	for _, v := range nums {
		digit, _ := strconv.ParseInt(v, 2, 64)
		ints[int(digit)] = true
	}
	for i := 0; i < n+1; i += 1 {
		var ans string
		if _, ok := ints[i]; !ok {
			ans = strconv.FormatInt(int64(i), 2)
			prefix := ""
			if len(ans) < n {
				prefix = strings.Repeat("0", n-len(ans))
			}
			return prefix + ans
		}
	}
	panic("This could not be reached.")
}
