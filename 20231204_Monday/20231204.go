// Leetcode: 2264. Largest 3-Same-Digit Number in String.
// https://leetcode.com/problems/largest-3-same-digit-number-in-string
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 66.67% of Go online submissions for Largest
// 3-Same-Digit Number in String.
// Memory Usage: 2.2 MB, less than 66.67% of Go online submissions for Largest
// 3-Same-Digit Number in String.
// 2023.12.04 Daily Challenge.

package main

import (
	"fmt"
)

func largestGoodInteger(num string) string {
	// Numbers going to store flags "does a good digit occures?".
	// 0 -> 999
	// 1 -> 888
	// 9 -> 000
	// How to calculate index for xxx?
	// i = (9 - x)
	// How to calculate a value from an index?
	// x = 9 - i
	numbers := make([]bool, 10)
	n := len(num)
	for i := 2; i < n; i += 1 {
		if num[i-2] == num[i-1] && num[i-1] == num[i] {
			numbers[9-int(num[i]-'0')] = true
		}
	}
	for i := 0; i < 10; i += 1 {
		if numbers[i] {
			x := 9 - i
			return fmt.Sprintf("%d%d%d", x, x, x)
		}
	}
	return ""
}
