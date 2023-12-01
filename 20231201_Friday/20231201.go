// Leetcode: 1662. Check If Two String Arrays are Equivalent.
// https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 69.90% of Go online submissions for Check If Two
// String Arrays are Equivalent.
// Memory Usage: 2.3 MB, less than 100.00% of Go online submissions for Check
// If Two String Arrays are Equivalent.
// 2023.12.01 Daily Challenge.
package main

func arrayStringsAreEqual(word1 []string, word2 []string) bool {
	// To paris of (row,column) poiters.
	i1, j1 := 0, 0
	i2, j2 := 0, 0
	n1, n2 := len(word1), len(word2)
	for i1 < n1 && i2 < n2 {
		if word1[i1][j1] != word2[i2][j2] {
			return false
		}
		j1 += 1
		j2 += 1
		// If step out of a word bounds.
		// Change a row.
		if len(word1[i1]) == j1 {
			i1 += 1
			j1 = 0
		}
		if len(word2[i2]) == j2 {
			i2 += 1
			j2 = 0
		}
	}
	// Need to iterate over both rows.
	if n1 != i1 || n2 != i2 {
		return false
	}
	// Both columns must be zero.
	if 0 != j1 || 0 != j2 {
		return false
	}
	return true // All conditions are fulfilled.
}
