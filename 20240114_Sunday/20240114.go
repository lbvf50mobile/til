// Leetcode: 1657. Determine if Two Strings Are Close.
// https://leetcode.com/problems/determine-if-two-strings-are-close/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 17 ms, faster than 86.55% of Go online submissions for Determine
// if Two Strings Are Close.
// Memory Usage: 6.6 MB, less than 91.38% of Go online submissions for
// Determine if Two Strings Are Close.
// 2024.01.14 Daily Challenge.

package main

import "sort"

func closeStrings(word1 string, word2 string) bool {
	var arr1, arr2 [26]int
	count1, count2 := arr1[:], arr2[:]
	// 1. Use same set of used chars.
	getCounter(word1, count1)
	getCounter(word2, count2)
	if !sameSet(count1, count2) {
		return false
	}
	// 2. Arrays must be the same after sorting.
	// Counters ARE Broken AFTER the CALL!
	sort.Ints(count1)
	sort.Ints(count2)
	return arr1 == arr2
}

// Check both counters use same set of chars.
func sameSet(count1, count2 []int) bool {
	for i, v := range count1 {
		tmp := count2[i]
		if 0 == v && 0 != tmp {
			return false
		}
		if 0 != v && 0 == tmp {
			return false
		}
	}
	return true
}

// Counter maker. Map of occurrences.
func getCounter(s string, count []int) {
	for _, v := range s {
		count[int(v-'a')] += 1
	}
}
