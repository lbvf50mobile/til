// Leetcode: 948. Bag of Tokens.
// https://leetcode.com/problems/bag-of-tokens/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 61.54% of Go online submissions for Bag of
// Tokens.
// Memory Usage: 2.9 MB, less than 69.23% of Go online submissions for Bag of
// Tokens.
// 2024.03.04 Daily Challenge.

package main

import "sort"

func bagOfTokensScore(tokens []int, power int) int {
	sort.Ints(tokens)
	ans, tmp := 0, 0
	i, j := 0, len(tokens)-1
	p, t := power, tokens
	for i <= j && (p >= t[i] || tmp > 0) {
		// Buy when it is possible.
		for i <= j && p >= t[i] {
			p -= t[i]
			tmp += 1
			i += 1
		}
		ans = max(tmp, ans)
		if (i <= j) && (tmp > 0) {
			p += t[j]
			j -= 1
			tmp -= 1
		}
	}
	return ans
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
