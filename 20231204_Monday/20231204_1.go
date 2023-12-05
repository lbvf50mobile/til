// Leetcode: 2264. Largest 3-Same-Digit Number in String.
// https://leetcode.com/problems/largest-3-same-digit-number-in-string
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Largest
// 3-Same-Digit Number in String.
// Memory Usage: 2.2 MB, less than 66.67% of Go online submissions for Largest
// 3-Same-Digit Number in String.
// 2023.12.05 Updated.

package main

import (
	"fmt"
)

func largestGoodInteger(num string) string {
	max := -1
	n := len(num)
	for i := 2; i < n; i += 1 {
		if num[i-2] == num[i-1] && num[i-1] == num[i] {
			tmp := int(num[i] - '0')
			if tmp > max {
				max = tmp
			}
		}
	}
	if max > -1 {
		return fmt.Sprintf("%d%d%d", max, max, max)
	}
	return ""
}
