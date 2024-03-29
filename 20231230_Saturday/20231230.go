// Leetcode: 1897. Redistribute Characters to Make All Strings Equal.
// https://leetcode.com/problems/redistribute-characters-to-make-all-strings-equal/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 12 ms, faster than 55.56% of Go online submissions for
// Redistribute Characters to Make All Strings Equal.
// Memory Usage: 3.7 MB, less than 88.89% of Go online submissions for
// Redistribute Characters to Make All Strings Equal.
// 2023.12.30 Daily Challenge.

package main

func makeEqual(words []string) bool {
	counter := make([]int, 26)
	n := len(words)
	// Fill the counter.
	for _, w := range words {
		for _, c := range w {
			counter[int(c-'a')] += 1
		}
	}
	for _, count := range counter {
		if 0 != count%n {
			return false
		}
	}
	return true
}
