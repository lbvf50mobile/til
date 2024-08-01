// Leetcode: 2678. Number of Senior Citizens.
// https://leetcode.com/problems/number-of-senior-citizens/?envType=daily-question&envId=2024-08-01
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Number of
// Senior Citizens.
// Memory Usage: 3.2 MB, less than 9.30% of Go online submissions for Number
// of Senior Citizens.

package main

import (
	"strconv"
)

func countSeniors(details []string) int {
	ans := 0
	for _, v := range details {
		tmp := v[11:13]
		if age, _ := strconv.Atoi(tmp); age > 60 {
			ans += 1
		}
	}
	return ans
}
