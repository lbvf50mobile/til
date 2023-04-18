// Leetcode: 1768. Merge Strings Alternately.
// https://leetcode.com/problems/merge-strings-alternately/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 2 ms, faster than 60.00% of Go online submissions for Merge Strings
// Alternately.
// Memory Usage: 2.1 MB, less than 45.00% of Go online submissions for Merge
// Strings Alternately.
// 2023.04.18 Daily Challenge.
package main

func mergeAlternately(word1 string, word2 string) string {
	i, j, k := 0, 0, 0
	m, n := len(word1), len(word2)
	ans := make([]byte, m+n)
	for i < m && j < n {
		ans[k] = word1[i]
		k += 1
		i += 1
		ans[k] = word2[j]
		k += 1
		j += 1
	}
	for i < m {
		ans[k] = word1[i]
		k += 1
		i += 1
	}
	for j < n {
		ans[k] = word2[j]
		k += 1
		j += 1
	}
	return string(ans)
}
