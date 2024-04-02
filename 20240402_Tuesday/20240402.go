// Leetcode: 205. Isomorphic Strings.
// https://leetcode.com/problems/isomorphic-strings/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 5 ms, faster than 36.73% of Go online submissions for Isomorphic
// Strings.
// Memory Usage: 2.8 MB, less than 48.32% of Go online submissions for
// Isomorphic Strings.
// 2024.04.02 Daily Challenge.

package main

func isIsomorphic(s string, t string) bool {
	mp1 := make(map[byte]byte) // Mappin s to t.
	mp2 := make(map[byte]byte) // Mappint t to s.
	var sC, tC byte            // sChar, tChar
	for i, v := range s {
		sC = byte(v)
		tC = t[i]
		tmp1, ok1 := mp1[sC]
		tmp2, ok2 := mp2[tC]
		// Two condition to continue.
		// 1) Both unknown.
		// 2) Both known and match.
		if (!ok1) && (!ok2) {
			mp1[sC] = tC
			mp2[tC] = sC
			continue
		}
		if ok1 && ok2 && tmp1 == tC && tmp2 == sC {
			continue
		}
		return false
	}
	return true
}
