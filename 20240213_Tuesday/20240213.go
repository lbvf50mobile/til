// Leetcode: 2108. Find First Palindromic String in the Array.
// https://leetcode.com/problems/find-first-palindromic-string-in-the-array/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 16 ms, faster than 49.12% of Go online submissions for Find First
// Palindromic String in the Array.
// Memory Usage: 7.2 MB, less than 17.54% of Go online submissions for Find
// First Palindromic String in the Array.
// 2024.02.13 Daily Challenge.

package main

func firstPalindrome(words []string) string {
	for _, v := range words {
		if isPal(v) {
			return v
		}
	}
	return ""
}

func isPal(x string) bool {
	i, j := 0, len(x)-1
	for i < j {
		if x[i] != x[j] {
			return false
		}
		i += 1
		j -= 1
	}
	return true
}
