// Leetcode: 1347. Minimum Number of Steps to Make Two Strings Anagram.
// https://leetcode.com/problems/minimum-number-of-steps-to-make-two-strings-anagram/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 11 ms, faster than 95.35% of Go online submissions for Minimum
// Number of Steps to Make Two Strings Anagram.
// Memory Usage: 6.7 MB, less than 34.88% of Go online submissions for Minimum
// Number of Steps to Make Two Strings Anagram.
// 2024.01.13 Daily Challenge.

package main

func minSteps(s string, t string) int {
	// If image that there are only two symbols in the alphabet 0 and 1,
	// there will be more one kind and less of other kind of simbols in `t`.
	// Thus there will be two var `more` and `less`. The `s` string is const,
	// so it is possible only compare with `s`. Again, `more` and `less`.
	counterS := counter(s)
	counterT := counter(t)
	more, less := 0, 0
	for i, v := range counterS {
		t := counterT[i]
		if t > v {
			more += t - v
		}
		if t < v {
			less += v - t
		}
	}
	// If there is more of some characters.
	// They bite plase from one thet less.
	// And because the lenght is conts.
	// And there is `s` as ideal: `more == less`.
	// Adding some where, reducing in other place.
	// x: 0; y: 1. x + y = const
	// if x + 5 => x + 5 + y = const - 5
	// x + 5 + y - 5 = const
	// Need to fix 5 elements.
	return more
}

func counter(s string) []int {
	ans := make([]int, 26)
	for _, v := range s {
		index := int(v - 'a')
		ans[index] += 1
	}
	return ans
}
