// Leetcode: 2000. Reverse Prefix of Word.
// https://leetcode.com/problems/reverse-prefix-of-word/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 1 ms, faster than 76.52% of Go online submissions for Reverse
// Prefix of Word.
// Memory Usage: 2.3 MB, less than 74.78% of Go online submissions for Reverse
// Prefix of Word.
// 2024.05.01 Daily Challenge.

package main

func reversePrefix(word string, ch byte) string {
	bts := []byte(word)
	i, j := 0, 0
	for i, v := range bts {
		if v == ch {
			j = i
			break
		}
	}
	for i < j {
		bts[i], bts[j] = bts[j], bts[i]
		i += 1
		j -= 1
	}
	return string(bts)
}
