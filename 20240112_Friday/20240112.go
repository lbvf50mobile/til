// Leetcode: 1704. Determine if String Halves Are Alike.
// https://leetcode.com/problems/determine-if-string-halves-are-alike/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 72.09% of Go online submissions for Determine if
// String Halves Are Alike.
// Memory Usage: 2.2 MB, less than 100.00% of Go online submissions for
// Determine if String Halves Are Alike.
// 2024.01.12 Daily Challenge.

package main

func halvesAreAlike(s string) bool {
	n := len(s)
	l, r := 0, 0

	for i, j := 0, n-1; i < j; i, j = i+1, j-1 {
		l += isVowel(s[i])
		r += isVowel(s[j])
	}
	return l == r
}

func isVowel(x byte) int {
	if 'a' == x || 'e' == x || 'i' == x || 'o' == x || 'u' == x {
		return 1
	}
	if 'A' == x || 'E' == x || 'I' == x || 'O' == x || 'U' == x {
		return 1
	}
	return 0
}
