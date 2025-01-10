// Leetcode: 916. Word Subset
// https://leetcode.com/problems/word-subsets/?envType=daily-question&envId=2025-01-10
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 47 ms Beats 14.29%
// Memory: 15.67 MB Beats 9.52%
// 2025.01.10 Daiy Challenge.

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
	row1, row2 := makeRow(words1), makeRow(words2)
	extract := extractRow(row2)
	ans := []string{}
	for i, v := range row1.infos {
		if isSuper(v, extract) {
			ans = append(ans, words1[i])
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

func isSuper(super, sub *info) bool {
	for i := 0; i < 26; i += 1 {
		if sub.cntr[i] > super.cntr[i] {
			return false
		}
	}
	return true
}
func extractRow(line *row) *info {
	// Save max values for each symbol.
	ans := new(info)
	for _, v := range line.infos {
		for i := 0; i < 26; i += 1 {
			if v.cntr[i] > ans.cntr[i] {
				ans.cntr[i] = v.cntr[i]
			}
		}
	}
	return ans
}
