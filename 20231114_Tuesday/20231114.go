// Leetcode: 1930. Unique Length-3 Palindromic Subsequences.
// https://leetcode.com/problems/unique-length-3-palindromic-subsequences
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 404 ms, faster than 72.22% of Go online submissions for Unique
// Length-3 Palindromic Subsequences.
// Memory Usage: 6 MB, less than 100.00% of Go online submissions for Unique
// Length-3 Palindromic Subsequences.
// 2023.11.14 Daily Challenge.
package main

func countPalindromicSubsequence(s string) int {
	// Based on:
	// https://leetcode.com/problems/unique-length-3-palindromic-subsequences/solution/

	// Indices of chars.
	// f - first.
	// l - last.
	// both arrays have 26 elements.
	f := []int{-1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1}
	l := []int{-1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1}
	for i, char := range s {
		curr := char - 'a'
		if -1 == f[curr] {
			f[curr] = i
		}
		l[curr] = i
	}
	ans := 0
	for i := 0; i < 26; i += 1 {
		if -1 == f[i] {
			continue
		}
		between := make(map[byte]bool)
		for j := f[i] + 1; j < l[i]; j += 1 {
			char := s[j]
			between[char] = true
		}
		ans += len(between)
	}
	return ans
}
