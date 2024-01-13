// Leetcode: 1347. Minimum Number of Steps to Make Two Strings Anagram.
// https://leetcode.com/problems/minimum-number-of-steps-to-make-two-strings-anagram/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms, faster than 94.87% of Go online submissions for Minimum
// Number of Steps to Make Two Strings Anagram.
// Memory Usage: 6.6 MB, less than 38.46% of Go online submissions for Minimum
// Number of Steps to Make Two Strings Anagram.
// 2024.01.13 Daily Challenge.

package main

func minSteps(s string, t string) int {
	// Loosed positions.
	ans := 0
	countS := counter(s)
	countT := counter(t)
	for i, v := range countS {
		t := countT[i]
		if t < v {
			ans += v - t
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
