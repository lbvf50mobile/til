// Leetcode: 3042. Count Prefix and Suffix Pairs I
// https://leetcode.com/problems/count-prefix-and-suffix-pairs-i/?envType=daily-question&envId=2025-01-08
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 4.67 MB Beats 20.83%
// 2025.01.08 Daily Challenge.
// https://gist.github.com/lbvf50mobile/5f063f9bb92ee4569b141132e69cbfdc

package main

import (
// "fmt"
)

func countPrefixSuffixPairs(words []string) int {
	ans := 0
	n := len(words)
	for i := 0; i < n; i += 1 {
		for j := i + 1; j < n; j += 1 {
			if isPrefixAndSuffix(words[i], words[j]) {
				ans += 1
			}
		}
	}
	return ans
}

func isPrefixAndSuffix(s1, s2 string) bool {
	n, m := len(s1), len(s2)
	if n > m {
		return false
	}
	prefix := s2[0:n]
	suffix := s2[m-n:]
	if s1 == prefix && s1 == suffix {
		return true
	}
	return false

}
