// Leetcode: 1768. Merge Strings Alternately.
// https://leetcode.com/problems/merge-strings-alternately/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 12.00% of Go online submissions for Merge Strings
// Alternately.
// Memory Usage: 2.6 MB, less than 26.00% of Go online submissions for Merge
// Strings Alternately.
// 2023.04.18 Daily Challenge.
package main

func mergeAlternately(word1 string, word2 string) string {
	i, j := 0, 0
	m, n := len(word1), len(word2)
	ans := ""
	for i < m && j < n {
		ans += string(word1[i]) + string(word2[j])
		i += 1
		j += 1
	}
	for i < m {
		ans += string(word1[i])
		i += 1
	}
	for j < n {
		ans += string(word2[j])
		j += 1
	}
	return ans
}
