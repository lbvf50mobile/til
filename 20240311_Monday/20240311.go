// Leetcode: 791. Custom Sort String.
// https://leetcode.com/problems/custom-sort-string/

package main

import "sort"

func customSortString(order string, s string) string {
	h := make(map[byte]int)
	ord := []byte(order)
	for i, v := range ord {
		h[byte(v)] = i
	}
	str := []byte(s)
	sort.Slice(str, func(i, j int) bool {
		a, b := str[i], str[j]
		aI, okA := h[a]
		bI, okB := h[b]
		if okA && okB {
			return aI < bI
		} else {
			return a < b
		}
	})
	return string(str)
}
