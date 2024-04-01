// Leetcode: 58. Length of Last Word.
// https://leetcode.com/problems/length-of-last-word/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 77.57% of Go online submissions for Length of
// Last Word.
// Memory Usage: 2.3 MB, less than 28.26% of Go online submissions for Length
// of Last Word.
// 2024.04.01 Daily Challenge.

package main

func lengthOfLastWord(s string) int {
	n := len(s)
	ans := 0
	j := n - 1
	for j >= 0 && ' ' == s[j] {
		j -= 1
	}
	if -1 == j {
		return 0
	}
	for j >= 0 && ' ' != s[j] {
		ans += 1
		j -= 1
	}
	return ans
}
