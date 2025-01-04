// Leetcode: 1930. Unique Length-3 Palindromic Subsequences
// https://leetcode.com/problems/unique-length-3-palindromic-subsequences/?envType=daily-question&envId=2025-01-04
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 564 ms Beats 38.46%
// Memory: 17.84 MB Beats 23.08%
// 2025.01.04 Daily Challenge.

package main

import (
// "fmt"
)

func countPalindromicSubsequence(s string) int {
	n := len(s)
	lPs := make([][26]byte, n)
	rPs := make([][26]byte, n)
	used := make(map[[3]byte]bool)
	ans := 0

	lPs[0][s[0]-'a'] += 1 // Set first element.
	// From second til end.
	for i := 1; i < n; i += 1 {
		for j := 0; j < 26; j += 1 {
			// Get from previous.
			lPs[i][j] += lPs[i-1][j]
		}
		// Increase curernt
		lPs[i][s[i]-'a'] += 1
	}

	// Set last.
	rPs[n-1][s[n-1]-'a'] += 1
	// From penultimate till first.
	for i := n - 2; i >= 0; i -= 1 {
		for j := 0; j < 26; j += 1 {
			// Get from one that is righter.
			rPs[i][j] += rPs[i+1][j]
		}
		// Increase.
		rPs[i][s[i]-'a'] += 1
	}

	// Do not touch border ones.
	for i := 1; i < n-1; i += 1 {
		for j := 0; j < 26; j += 1 {
			tmp := lPs[i-1][j] * rPs[i+1][j]
			key := [3]byte{byte(j), s[i] - 'a', byte(j)}
			_, ok := used[key]
			if tmp > 0 && !ok { // Here was an error.
				used[key] = true
				ans += 1
			}
		}
	}
	return ans
}
