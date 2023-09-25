// Leetcode: 389. Find the Difference.
// https://leetcode.com/problems/find-the-difference/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 82.31% of Go online submissions for Find the
// Difference.
// Memory Usage: 2.2 MB, less than 80.14% of Go online submissions for Find the
// Difference.
// 2023.09.25 Daily Challenge.

package main

func findTheDifference(s string, t string) byte {
	a, b := make([]byte, 26), make([]byte, 26)
	base := 'a'
	for _, x := range s {
		a[x-base] += 1
	}
	for _, x := range t {
		b[x-base] += 1
	}
	for i := 0; i < 26; i += 1 {
		if a[i]+1 == b[i] {
			return byte(i) + byte(base)
		}
	}
	return 0
}
