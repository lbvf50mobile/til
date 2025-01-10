// Leetcode: 916. Word Subset
// https://leetcode.com/problems/word-subsets/?envType=daily-question&envId=2025-01-10

package main

import (
// "fmt"
)

type cntr [26]int

func wordSubsets(words1 []string, words2 []string) []string {
	c1, c2 := strs2Cntrs(words1), strs2Cntrs(words2)
	ans := []string{}
	for i, v := range c1 {
		if isUniversal(v, c2) {
			ans = append(ans, words1[i])
		}
	}
	return ans
}

func makeCntr(w string) cntr {
	var ans cntr
	for _, v := range w {
		i := int(v) - int('a')
		ans[i] += 1
	}
	return ans
}

func strs2Cntrs(words []string) []cntr {
	ans := make([]cntr, len(words))
	for i, v := range words {
		ans[i] = makeCntr(v)
	}
	return ans
}

func isSub(sub, main cntr) bool {
	for i := 0; i < 26; i += 1 {
		if sub[i] > main[i] {
			return false
		}
	}
	return true
}

func isUniversal(un cntr, all []cntr) bool {
	for _, v := range all {
		if !isSub(v, un) {
			return false
		}
	}
	return true
}
