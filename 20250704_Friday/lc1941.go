// Leetcode: 1941. Check if All Characters Have Equal Number of Occurrences
// https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/description/
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main


func areOccurrencesEqual(s string) bool {
	// Make counter
	freq := make([]int, 26)
	for _, v := range s {
		freq[v-'a'] += 1
	}
	// Must be two values 0 and X.
	// Very Bright! Fixed 
	// One must be Zero and two Values!
	// Or just one value.
	values := make(map[int]bool)
	for _, v := range freq {
		values[v] = true
	}
	return values[0] && 2 == len(values) || 1 == len(values)
}
