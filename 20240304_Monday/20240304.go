// Leetcode: 948. Bag of Tokens.
// https://leetcode.com/problems/bag-of-tokens/

package main

import "sort"

func bagOfTokensScore(tokens []int, power int) int {
	sort.Ints(tokens)
	score := 0
	i, j := 0, len(tokens)-1
	for i <= j {
		// Face Up.
		if 0 == tokens[i] {
			i += 1
			score += 1
			continue
		}
		// Face Up.
		if i == j && tokens[i] <= power {
			power -= tokens[i]
			i += 1
			score += 1
			continue
		}
		if i <= j && tokens[i] < power {
			power -= tokens[i]
			i += 1
			score += 1
			continue
		}
		// Face down.
		iv, jv := tokens[i], tokens[j]
		// There is a reason to sell.
		if i+1 < j && score >= 1 && power <= iv && power+jv >= (iv+tokens[i+1]) {
			j -= 1
			score -= 1
			power += tokens[j]
			continue
		}
		if i < j && score >= 1 && power < iv && power+jv >= iv {
			j -= 1
			score -= 1
			power += tokens[j]
			continue
		}
		// Face up.
		if i <= j && tokens[i] <= power {
			power -= tokens[i]
			i += 1
			score += 1
			continue
		}
		break
	}
	return score
}
