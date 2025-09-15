// Leetcode: 1935. Maximum Number of Words You Can Type
// https://leetcode.com/problems/maximum-number-of-words-you-can-type/description/?envType=daily-question&envId=2025-09-15
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"strings"
)

func canBeTypedWords(text string, brokenLetters string) int {
	broken := make([]bool, 26)
	for _, v := range brokenLetters {
		broken[v-'a'] = true
	}
	can := func(word string) bool {
		for _, v := range word {
			if broken[v-'a'] {
				return false
			}
		}
		return true
	}
	ans := 0
	for _, v := range strings.Split(text, " ") {
		if can(v) {
			ans += 1
		}
	}
	return ans
}
