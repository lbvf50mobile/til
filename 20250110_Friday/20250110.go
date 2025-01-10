// Leetcode: 916. Word Subset
// https://leetcode.com/problems/word-subsets/?envType=daily-question&envId=2025-01-10

package main

import (
// "fmt"
)

type info struct {
	cntr [26]int
	size int
}

type row struct {
	infos  []*info
	minLen int
	maxLen int
}

func wordSubsets(words1 []string, words2 []string) []string {
	row2 := makeRow(words2)
	ans := []string{}
	for _, v := range words1 {
		if len(v) < row2.maxLen {
			continue
		}
		tmp := makeInfo(v)
		if isUniversal(tmp, row2) {
			ans = append(ans, v)
		}
	}
	return ans
}

func makeInfo(w string) *info {
	ans := new(info)
	ans.size = len(w)
	for _, v := range w {
		i := int(v) - int('a')
		ans.cntr[i] += 1
	}
	return ans
}

func makeRow(words []string) *row {
	ans := &row{}
	ans.infos = make([]*info, len(words))
	for i, v := range words {
		if 0 == i {
			ans.minLen = len(v)
			ans.maxLen = len(v)
		} else {
			if len(v) > ans.maxLen {
				ans.maxLen = len(v)
			}
			if len(v) < ans.minLen {
				ans.minLen = len(v)
			}
		}
		ans.infos[i] = makeInfo(v)
	}
	return ans
}

func isSub(sub, main *info) bool {
	if sub.size > main.size {
		return false
	}
	for i := 0; i < 26; i += 1 {
		if sub.cntr[i] > main.cntr[i] {
			return false
		}
	}
	return true
}
func isUniversal(un *info, line *row) bool {
	for _, sub := range line.infos {
		if !isSub(sub, un) {
			return false
		}
	}
	return true
}
