// Leetcode: 2116. Check if a Parentheses String Can Be Valid
// https://leetcode.com/problems/check-if-a-parentheses-string-can-be-valid/description
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms Beats 75.00%
// Memory: 8.81 MB Beats 75.00%
// 2025.01.12 Daily Challenge.
// https://gist.github.com/lbvf50mobile/d2b23d93bb6ae952dd43e03c2a57f505

package main

import (
// "fmt"
)

func canBeValid(s string, locked string) bool {
	// Hint: Possible to open first, not close first.
	n := len(s)

	if 1 == n%2 {
		return false
	}

	flex, open := 0, 0

	for i := 0; i < n; i += 1 {
		if '0' == locked[i] {
			flex += 1
			continue
		}
		if '(' == s[i] {
			open += 1
			continue
		}
		if ')' == s[i] && open > 0 {
			open -= 1
			continue
		}
		if ')' == s[i] && flex > 0 {
			flex -= 1
			continue
		}
		return false
	}
	if open > flex {
		return false
	}

	open, flex = 0, 0
	for i := n - 1; i >= 0; i -= 1 {
		if '0' == locked[i] {
			flex += 1
			continue
		}
		if ')' == s[i] {
			open += 1
			continue
		}
		if '(' == s[i] && open > 0 {
			open -= 1
			continue
		}
		if '(' == s[i] && flex > 0 {
			flex -= 1
			continue
		}
		return false
	}
	if open > flex {
		return false
	}
	return true
}
