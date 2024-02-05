// Leetcode: 387. First Unique Character in a String.
// https://leetcode.com/problems/first-unique-character-in-a-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 7 ms, faster than 85.19% of Go online submissions for First Unique
// Character in a String.
// Memory Usage: 5.4 MB, less than 51.20% of Go online submissions for First
// Unique Character in a String.
// 2024.02.05 Daily Challenge.

package main

type amountIndex struct {
	a int // amount.
	i int // intdex.
}

func firstUniqChar(s string) int {
	// Ok. Need to find first uniq char.
	// There len(s) elements in `s`. len(s) index is unreachable.
	// So set ans to len(s) we can track case when there are not uniq chars.
	n := len(s)
	ans := n
	counter := make([]*amountIndex, 26)
	// Fill counter.
	for i, v := range s {
		j := int(v - 'a')
		if nil == counter[j] {
			counter[j] = &amountIndex{1, i}
		} else {
			counter[j].a += 1
		}
	}
	// Find min.
	for _, v := range counter {
		if nil == v {
			continue
		}
		if 1 != v.a {
			continue
		}
		if 1 == v.a && v.i < ans {
			ans = v.i
		}
	}
	// - - - -  Return - - - -
	// No uniq chars.
	if n == ans {
		return -1
	}
	return ans
}
