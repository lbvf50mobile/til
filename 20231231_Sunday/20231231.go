// Leetcode: 1624. Largest Substring Between Two Equal Characters.
// https://leetcode.com/problems/largest-substring-between-two-equal-characters/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 70.59% of Go online submissions for Largest
// Substring Between Two Equal Characters.
// Memory Usage: 2.1 MB, less than 47.06% of Go online submissions for Largest
// Substring Between Two Equal Characters.
// 2023.12.31 Daily Challenge.

package main

func maxLengthBetweenEqualCharacters(s string) int {
	ans := -1
	last := make(map[rune]int)
	for j, c := range s {
		if i, ok := last[c]; ok {
			tmp := j - i - 1
			if tmp > ans {
				ans = tmp
			}
		} else {
			last[c] = j
		}
	}
	return ans
}
