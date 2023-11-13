// Leetcode: 2785. Sort Vowels in a String.
// https://leetcode.com/problems/sort-vowels-in-a-string/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 31 ms, faster than 64.86% of Go online submissions for Sort Vowels
// in a String.
// Memory Usage: 7.3 MB, less than 48.65% of Go online submissions for Sort
// Vowels in a String.
// 2023.11.13 Daily Challenge.
package main

import (
	"sort"
)

func sortVowels(s string) string {
	initial := []byte(s)
	indices := make([]int, len(s))
	vals := make([]byte, len(s))
	sizeVw := 0
	for i, v := range initial {
		if isV(v) {
			vals[sizeVw] = s[i] 
			indices[sizeVw] = i
			sizeVw += 1
		}
	}
	source := vals[:sizeVw] // <== Here!
	sort.Slice(source, func(i int, j int) bool { return vals[i] < vals[j] })
	for i := 0; i < sizeVw; i += 1 {
		char := source[i]
		pos := indices[i]
		initial[pos] = char
	}
	return string(initial)
}
func isV(v byte) bool {
	switch v {
	case 'a':
		fallthrough
	case 'e':
		fallthrough
	case 'i':
		fallthrough
	case 'o':
		fallthrough
	case 'u':
		fallthrough
	case 'A':
		fallthrough
	case 'E':
		fallthrough
	case 'I':
		fallthrough
	case 'O':
		fallthrough
	case 'U':
		return true
	}
	return false
}
