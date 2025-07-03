// Leetcode: 1935. Maximum Number of Words You Can Type
// https://leetcode.com/problems/maximum-number-of-words-you-can-type/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"strings"
)

func canBeTypedWords(text string, brokenLetters string) int {

	broke := make([]bool, 26)
	counter := 0

	for _, v := range brokenLetters {
		broke[v-'a'] = true
	}

	check := func(word string) bool {
		for _, v := range word {
			if broke[v-'a'] {
				return false
			}
		}
		return true
	}

	wrds := strings.Split(text, " ")

	for _, v := range wrds {
		if check(v) {
			counter += 1
		}
	}

	return counter

}
