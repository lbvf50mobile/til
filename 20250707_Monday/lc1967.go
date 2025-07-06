// Leetcode: 1967. Number of Strings That Appear as Substrings in Word
// https://leetcode.com/problems/number-of-strings-that-appear-as-substrings-in-word/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"strings"
)

func numOfStrings(patterns []string, word string) int {
	ans := 0
	for _, sub := range patterns {
		if strings.Contains(word, sub) {
			ans += 1
		}
	}
	return ans
}
