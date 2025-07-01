// Leetcode: 3330. Find the Original Typed String I
// https://leetcode.com/problems/find-the-original-typed-string-i/description/?envType=daily-question&envId=2025-07-01
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

func possibleStringCount(word string) int {
	// First initial state of the word is "general" for all modification.
	// It is counted only ones.
	ans := 1
	prev := word[0]
	counter := 1
	// Now increase amount of variants to the number of duplicates in row.
	// if there is 2 'a' in row, it is 1 duplicates.
	// if there is 3 'a' in row, it is 2 duplicates.
	// and += (counter - 1)
	for i := 1; i < len(word); i += 1 {
		if prev != word[i] {
			ans += (counter - 1)
			counter = 0
		}
		counter += 1
		prev = word[i]
	}
	// Last increase after the loop.
	ans += counter - 1
	return ans
}
