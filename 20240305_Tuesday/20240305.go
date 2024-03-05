// Leetcode: 1750. Minimum Length of String After Deleting Similar Ends.
// https://leetcode.com/problems/minimum-length-of-string-after-deleting-similar-ends/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 9 ms, faster than 36.36% of Go online submissions for Minimum
// Length of String After Deleting Similar Ends.
// Memory Usage: 6.3 MB, less than 72.73% of Go online submissions for Minimum
// Length of String After Deleting Similar Ends.
// 2024.03.05 Daily Challenge.

package main

func minimumLength(s string) int {
	i, j := 0, len(s)-1
	n := len(s)
	for i <= j && (s[i] == s[j]) {
		if i == j {
			return 1
		}
		i += 1
		j -= 1
		for i < n && s[i] == s[i-1] {
			i += 1
		}
		for j >= 0 && s[j] == s[j+1] {
			j -= 1
		}
	}
	if i > j {
		return 0
	}
	return j - i + 1
}
