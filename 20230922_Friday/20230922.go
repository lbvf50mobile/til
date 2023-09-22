// Leetcode: 392. Is Subsequence.
// https://leetcode.com/problems/is-subsequence
// = = = = = = = = = = = = = = 
// Accepted.
// Thanks God, Jesus Chirst!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 81.63% of Go online submissions for Is
// Subsequence. Memory Usage: 2 MB, less than 95.67% of Go online submissions
// for Is Subsequence.
// 2023.09.22 Daily Challenge.
package main

func isSubsequence(s string, t string) bool {
	m, n := len(s), len(t)
	i, j := 0, 0
	for i < m && j < n {
		a, b := s[i], t[j]
		if a == b {
			i += 1
		}
		j += 1
	}

	if m == i {
		return true
	}
	return false
}
