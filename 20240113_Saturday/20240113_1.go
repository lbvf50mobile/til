// Leetcode: 1347. Minimum Number of Steps to Make Two Strings Anagram.
// https://leetcode.com/problems/minimum-number-of-steps-to-make-two-strings-anagram/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 16 ms, faster than 64.10% of Go online submissions for Minimum
// Number of Steps to Make Two Strings Anagram.
// Memory Usage: 6.7 MB, less than 38.46% of Go online submissions for Minimum
// Number of Steps to Make Two Strings Anagram.
// 2024.01.13 Daily Challenge.

package main

func minSteps(s string, t string) int {
	// Conquered places.
	ans := 0
	countT := counter(t)
	countS := counter(s)
	for i, v := range countS {
		t := countT[i]
		if t > v {
			ans += t - v
		}
	}
	return ans
}

func counter(s string) []int {
	ans := make([]int, 26)
	for _, v := range s {
		ans[int(v-'a')] += 1
	}
	return ans
}
