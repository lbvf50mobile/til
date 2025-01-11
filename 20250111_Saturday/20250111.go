// Leecode: 1400. Construct K Palindrome Strings
// https://leetcode.com/problems/construct-k-palindrome-strings/description/?envType=daily-question&envId=2025-01-11
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 8.14 MB Beats 25.00%
// 2025.01.11 Daily Challenge.

package main

import (
// "fmt"
)

func canConstruct(s string, k int) bool {
	if k > len(s) {
		return false
	}
	freq := [26]int{}
	for _, v := range s {
		i := int(v) - int('a')
		freq[i] += 1
	}
	odd := 0
	for _, v := range freq {
		if 1 == v%2 {
			odd += 1
		}
	}
	// amount of centers 
	if odd > k {
		return false
	}
	return true
}
