// Leetcode: 242. Valid Anagram.
// https://leetcode.com/problems/valid-anagram/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Valid
// Anagram.
// Memory Usage: 2.8 MB, less than 34.32% of Go online submissions for Valid
// Anagram.
// 2023.12.16 Daily Challenge.

package main

func isAnagram(s string, t string) bool {
	var a [26]int
	var b [26]int
	for _, v := range s {
		a[int(v-'a')] += 1
	}
	for _, v := range t {
		b[int(v-'a')] += 1
	}
	return a == b
}
