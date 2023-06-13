// Leetcode: 228. Summary Ranges.
// https://leetcode.com/problems/summary-ranges/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 69.82% of Go online submissions for Summary
// Ranges.
// Memory Usage: 2 MB, less than 40.36% of Go online submissions for Summary
// Ranges.
// 2023.06.13 Updated.
package main

import (
	"fmt"
	"strconv"
)

func summaryRanges(nums []int) []string {
	ans := []string{}
	if 0 == len(nums) {
		return ans
	}
	a, b := nums[0], nums[0]
	for i := 1; i < len(nums); i += 1 {
		cur := nums[i]
		if b+1 == cur {
			b = cur
		} else {
			ans = write(a, b, ans)
			a, b = cur, cur
		}
	}
	ans = write(a, b, ans)
	return ans
}

func write(a, b int, ans []string) []string{
	if a == b {
		ans = append(ans, strconv.Itoa(a))
	} else {
		ans = append(ans, fmt.Sprintf("%d->%d", a, b))
	}
	return ans
}
